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
    private var container: SVGContainer? = nil
    private var completion: ((SVGContainer?) -> Void)? = nil
    private var currentGroup: SVGGroup? = nil
    
    
    
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
        container    = nil
        currentGroup = nil
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
            if currentGroup != nil {
                currentGroup?.elements.append(group)
                
            } else {
                currentGroup = group
            }
            
            guard container?.elements.isEmpty == true else { return }
            container?.elements.append(group)
            
        case .path:
            let path = SVGPath(data: attributeDict)
            
            if currentGroup != nil {
                currentGroup?.elements.append(path)
                
            } else {
                container?.elements.append(path)
            }
        }
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
    }
    
    func parserDidEndDocument(_ parser: XMLParser) {
        completion?(container)
        
        container    = nil
        currentGroup = nil
        completion   = nil
    }
    
    func parser(_ parser: XMLParser, parseErrorOccurred parseError: Error) {
        log(.error, parseError.localizedDescription)
        completion?(nil)
    }
}
