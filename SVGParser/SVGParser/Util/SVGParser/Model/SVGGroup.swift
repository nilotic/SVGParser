//
//  SVGGroup.swift
//  SVGParser
//
//  Created by Den Jo on 2020/11/02.
//

import Foundation

struct SVGGroup: SVGElement {
//    let attribute: SVGAttribute
    let elements: [SVGElement]
    let type: SVGElementType
}

extension SVGGroup {
    
    init(data: [String : String]) {
        var attributes = [SVGAttribute]()
        
        for (key, value) in data {
            guard let attribute = SVGAttribute(key: key, value: value) else {
                log(.error, "Failed to extract attributes")
                continue
            }
            
            attributes.append(attribute)
        }
        
        
        
        elements = []
        type = .group
    }
}
