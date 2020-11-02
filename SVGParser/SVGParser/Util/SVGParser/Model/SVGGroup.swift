//
//  SVGGroup.swift
//  SVGParser
//
//  Created by Den Jo on 2020/11/02.
//

import Foundation

struct SVGGroup: SVGElement {
    let attributes: [SVGAttribute]
    var elements: [SVGElement]
    let type: SVGElementType = .group
}

extension SVGGroup {
    
    init(data: [String : String]) {
        attributes = data.compactMap { SVGAttribute(key: $0.0, value: $0.1) }
        elements   = []
    }
}
