//
//  SVGPath.swift
//  SVGParser
//
//  Created by Den Jo on 2020/11/02.
//
// https://www.w3.org/TR/SVG/paths.html
//

import UIKit

final class SVGPath: SVGElement {
    var attributes: [SVGAttribute] = []
    let type: SVGElementType       = .path
}

extension SVGPath {
    
    convenience init(data: [String : String]) {
        self.init()
        attributes = data.compactMap { SVGAttribute(key: $0.0, value: $0.1) }
    }
}
