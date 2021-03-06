//
//  SVGParser.swift
//  SVGParser
//
//  Created by Den Jo on 2020/11/02.
//

import UIKit

final class SVGParser: XMLParser {
   
    // MARK: - Initializer
    override init(data: Data) {
        super.init(data: data)
        delegate = self
    }
    
    
    
    // MARK: - Function
    // MARK: Public
    
    
}



// MARK: - XMLParser Delegate
extension SVGParser: XMLParserDelegate {

    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        guard let element = SVGElementType(rawValue: elementName) else { return }
        
        switch element {
        case .container:
            let data = SVGContainer(data: attributeDict)
            
        
        case .group:
            debugPrint("\(elementName) \(namespaceURI) \(qName) \(attributeDict)")
            
            SVGGroup(data: attributeDict)

            break
            
        case .path:
            debugPrint("\(elementName) \(namespaceURI) \(qName) \(attributeDict)")
            break
        }
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
//        debugPrint("\(elementName) \(namespaceURI) \(qName)")
        
    }
    
    func parserDidEndDocument(_ parser: XMLParser) {
        log(.info, "")
    }
    
    func parser(_ parser: XMLParser, parseErrorOccurred parseError: Error) {
        debugPrint(parseError.localizedDescription)
    }
}
