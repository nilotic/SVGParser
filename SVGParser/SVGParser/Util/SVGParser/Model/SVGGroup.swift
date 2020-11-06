//
//  SVGGroup.swift
//  SVGParser
//
//  Created by Den Jo on 2020/11/02.
//

import Foundation

final class SVGGroup: SVGElement {
    var attributes: [SVGAttribute]  = []
    var elements: [SVGElement]      = []
    var parentElements: SVGElement? = nil
    let type: SVGElementType        = .group
}

extension SVGGroup {
    
    convenience init(data: [String : String]) {
        self.init()
        
        attributes = data.compactMap { SVGAttribute(key: $0.0, value: $0.1) }
        elements   = []
    }
}
