//
//  SVGPathType.swift
//  SVGParser
//
//  Created by Den Jo on 2020/11/02.
//
// https://www.w3.org/TR/SVG/paths.html
//

import Foundation

enum SVGPathType {
    case move(SVGCalculationType)
    case line(SVGCalculationType)
    case horizontalLine(SVGCalculationType)
    case verticalLine(SVGCalculationType)
    case curve(SVGCalculationType)
    case smoothCurve(SVGCalculationType)
    case quadraticBezierCurve(SVGCalculationType)
    case smoothQuadraticBezierCurve(SVGCalculationType)
    case ellipticalArc(SVGCalculationType)
    case closePath(SVGCalculationType)
}

extension SVGPathType {
    
    var rawValue: String {
        switch self {
        case .move(let type):                         return type == .absolute ? "M" : "m"
        case .line(let type):                         return type == .absolute ? "L" : "l"
        case .horizontalLine(let type):               return type == .absolute ? "H" : "h"
        case .verticalLine(let type):                 return type == .absolute ? "V" : "v"
        case .curve(let type):                        return type == .absolute ? "C" : "c"
        case .smoothCurve(let type):                  return type == .absolute ? "S" : "s"
        case .quadraticBezierCurve(let type):         return type == .absolute ? "Q" : "q"
        case .smoothQuadraticBezierCurve(let type):   return type == .absolute ? "T" : "t"
        case .ellipticalArc(let type):                return type == .absolute ? "A" : "a"
        case .closePath(let type):                    return type == .absolute ? "Z" : "z"
        }
    }
}

extension SVGPathType {
    
    init?(data: Character) {
        switch data {
        case "M":       self = .move(.absolute)
        case "m":       self = .move(.relative)
            
        case "L":       self = .line(.absolute)
        case "l":       self = .line(.relative)
            
        case "H":       self = .horizontalLine(.absolute)
        case "h":       self = .horizontalLine(.relative)
            
        case "V":       self = .verticalLine(.absolute)
        case "v":       self = .verticalLine(.relative)
            
        case "C":       self = .curve(.absolute)
        case "c":       self = .curve(.relative)
        
        case "S":       self = .smoothCurve(.absolute)
        case "s":       self = .smoothCurve(.relative)
            
        case "Q":       self = .quadraticBezierCurve(.absolute)
        case "q":       self = .quadraticBezierCurve(.relative)
        
        case "T":       self = .smoothQuadraticBezierCurve(.absolute)
        case "t":       self = .smoothQuadraticBezierCurve(.relative)
        
        case "A":       self = .ellipticalArc(.absolute)
        case "a":       self = .ellipticalArc(.relative)
            
        case "Z":       self = .closePath(.absolute)
        case "z":       self = .closePath(.relative)
        default:        return nil
        }
    }
}

extension SVGPathType: Hashable {
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(rawValue)
    }
}


extension SVGPathType: Equatable {
    
    static func ==(lhs: SVGPathType, rhs: SVGPathType) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }
}
