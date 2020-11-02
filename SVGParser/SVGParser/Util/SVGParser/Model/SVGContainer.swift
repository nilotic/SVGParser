//
//  SVGContainer.swift
//  SVGParser
//
//  Created by Den Jo on 2020/11/02.
//

import UIKit

struct SVGContainer: SVGElement {
    let size: CGSize
    let frame: CGRect
    var elements: [SVGElement]
    let type: SVGElementType
}

extension SVGContainer {
    
    init(data: [String : String]) {
        let formatter = NumberFormatter()
        
        if let width = formatter.number(from: data["width"] ?? "")?.floatValue, let height = formatter.number(from: data["height"] ?? "")?.floatValue {
            size = CGSize(width: CGFloat(width), height: CGFloat(height))
            
        } else {
            size = .zero
        }
        
        if let components = data["viewBox"]?.components(separatedBy: " "), components.count == 4,
           let x = formatter.number(from: components[0])?.floatValue, let y = formatter.number(from: components[1])?.floatValue,
           let width = formatter.number(from: components[2])?.floatValue, let heigh = formatter.number(from: components[3])?.floatValue {
            frame = CGRect(x: CGFloat(x), y: CGFloat(y), width: CGFloat(width), height: CGFloat(heigh))
            
        } else {
            frame = .zero
        }
        
        elements = []
        type     = .container
    }
}
