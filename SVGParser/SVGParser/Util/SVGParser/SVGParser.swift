//
//  SVGParser.swift
//  SVGParser
//
//  Created by Den Jo on 2020/11/02.
//

import UIKit

final class SVGParser: NSObject {
   
    // MARK: - Value
    // MARK: Private
    private var completion: ((SVGContainer?) -> Void)? = nil
    private var container: SVGContainer? = nil
    private var currentGroup: SVGGroup? = nil
    private var elements = [SVGElement]()
    
    
    // MARK: - Function
    // MARK: Public
    func parse(data: Data?, completion: @escaping ((_ svg: SVGContainer?) -> Void)) -> Bool {
        guard let data = data else { return false }
        
        let parser = XMLParser(data: data)
        parser.delegate = self
        parser.parse()
        
        self.completion = completion
        return true
    }
}



// MARK: - XMLParser Delegate
extension SVGParser: XMLParserDelegate {
    
    func parserDidStartDocument(_ parser: XMLParser) {
        elements.removeAll()
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        guard let element = SVGElementType(rawValue: elementName) else {
            log(.error, "\(elementName) is unsupported type.")
            return
        }
        
        switch element {
        case .container:
            container = SVGContainer(data: attributeDict)
            
        case .group:
            let group = SVGGroup(data: attributeDict)
          
            if let currentGroup = currentGroup {
                group.parentElements = currentGroup
                currentGroup.elements.append(group)
            
            } else {
                group.parentElements = container
                container?.elements.append(group)
            }
            
            currentGroup = group
            
        case .path:
            elements.append(SVGPath(data: attributeDict))
        }
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        guard let element = SVGElementType(rawValue: elementName) else {
            log(.error, "\(elementName) is unsupported type.")
            return
        }
        
        switch element {
        case .container:
            break
            
        case .group:
            guard elements.isEmpty == false, let currentGroup = currentGroup else { return }
            currentGroup.elements.append(contentsOf: elements)
            
            self.currentGroup = currentGroup.parentElements as? SVGGroup
            elements.removeAll()
            
        case .path:
            break
        }
    }
    
    func parserDidEndDocument(_ parser: XMLParser) {
        elements.removeAll()
    }
    
    func parser(_ parser: XMLParser, parseErrorOccurred parseError: Error) {
        log(.error, parseError.localizedDescription)
        completion?(nil)
    }
}
