//
//  SVGAttribute.swift
//  SVGParser
//
//  Created by Den Jo on 2020/11/02.
//
// https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute
//

import UIKit

enum SVGAttribute {
    case accentHeight
    case accumulate
    case additive
    case alignmentBaseline
    case allowReorder
    case alphabetic
    case amplitude
    case arabicForm
    case ascent
    case attributeName
    case attributeType
    case autoReverse
    case azimuth
    
    
    case baseFrequency
    case baselineShift
    case baseProfile
    case bbox
    case begin
    case bias
    case by
    
    
    case calcMode
    case capHeight
    case `class`
    case clip
    case clipPathUnits
    case clipPath
    case clipRule
    case color
    case colorInterpolation
    case colorInterpolationFilters
    case colorProfile
    case colorRendering
    case contentScriptType
    case contentStyleType
    case cursor
    case cx
    case cy
    
    
    /// drawn
    case d(UIBezierPath)
    case decelerate
    case descent
    case diffuseConstant
    case direction
    case display
    case divisor
    case dominantBaseline
    case dur
    case dx
    case dy
    case edgeMode
    case elevation
    case enableBackground
    case end
    case exponent
    case externalResourcesRequired
    
    
    case fill(UIColor)
    case fillOpacity
    case fillRule
    case filter
    case filterRes
    case filterUnits
    case floodColor
    case floodOpacity
    case fontFamily
    case fontSize
    case fontSizeAdjust
    case fontStretch
    case fontStyle
    case fontVariant
    case fontWeight
    case format
    case from
    case fr
    case fx
    case fy
    
    
    case g1
    case g2
    case glyphName
    case glyphOrientationHorizontal
    case glyphOrientationVertical
    case glyphRef
    case gradientTransform
    case gradientUnits
    
    
    case hanging
    case height
    case href
    case hreflang
    case horizAdvX
    case horizOriginX
    case id
    case ideographic
    case imageRendering
    case `in`
    case in2
    case intercept
    
    
    /// kerning
    case k
    case k1
    case k2
    case k3
    case k4
    case kernelMatrix
    case kernelUnitLength
    case kerning
    case keyPoints
    case keySplines
    case keyTimes
    
    
    case lang
    case lengthAdjust
    case letterSpacing
    case lightingColor
    case limitingConeAngle
    case local
    
    
    case markerEnd
    case markerMid
    case markerStart
    case markerHeight
    case markerUnits
    case markerWidth
    case mask
    case maskContentUnits
    case maskUnits
    case mathematical
    case max
    case media
    case method
    case min
    case mode
    
    
    case name
    case numOctaves
    
    
    case offset
    case opacity
    case `operator`
    case order
    case orient
    case orientation
    case origin
    case overflow
    case overlinePosition
    case overlineThickness
    
    
    case panose1
    case paintOrder
    case path
    case pathLength
    case patternContentUnits
    case patternTransform
    case patternUnits
    case ping
    case pointerEvents
    case points
    case pointsAtX
    case pointsAtY
    case pointsAtZ
    case preserveAlpha
    case preserveAspectRatio
    case primitiveUnits
    
    
    /// Radius
    case r
    case radius
    case referrerPolicy
    case refX
    case refY
    case rel
    case renderingIntent
    case repeatCount
    case repeatDur
    case requiredExtensions
    case requiredFeatures
    case restart
    case result
    case rotate
    case rx
    case ry
    
    
    case scale
    case seed
    case shapeRendering
    case slope
    case spacing
    case specularConstant
    case specularExponent
    case speed
    case spreadMethod
    case startOffset
    case stdDeviation
    case stemh
    case stemv
    case stitchTiles
    case stopColor
    case stopOpacity
    case strikethroughPosition
    case strikethroughThickness
    case string
    case stroke
    case strokeDasharray
    case strokeDashoffset
    case strokeLinecap
    case strokeLinejoin
    case strokeMiterlimit
    case strokeOpacity
    case strokeWidth
    case style
    case surfaceScale
    case systemLanguage
    
    
    case tabindex
    case tableValues
    case target
    case targetX
    case targetY
    case textAnchor
    case textDecoration
    case textRendering
    case textLength
    case to
    case transform
    case transformOrigin
    case type
    
    
    case u1
    case u2
    case underlinePosition
    case underlineThickness
    case unicode
    case unicodeBidi
    case unicodeRange
    case unitsPerEm
    
    
    case vAlphabetic
    case vHanging
    case vIdeographic
    case vMathematical
    case values
    case vectorEffect
    case version
    case vertAdvY
    case vertOriginX
    case vertOriginY
    case viewBox
    case viewTarget
    case visibility
    
    
    case width
    case widths
    case wordSpacing
    case writingMode
    
    
    /// x - axis
    case x
    case xHeight
    case x1
    case x2
    case xChannelSelector
    case xlinkActuate
    case xlinkArcrole
    case xlinkHref
    case xlinkRole
    case xlinkShow
    case xlinkTitle
    case xlinkType
    case xmlBase
    case xmlLang
    case xmlSpace
    
    
    /// y - axis
    case y
    case y1
    case y2
    case yChannelSelector
    
    
    /// z -  axis
    case z
    case zoomAndPan
}
extension SVGAttribute {
    
    init?(key: String, value: String) {
        switch key {
        case "accent-height":                   self = .accentHeight
        case "accumulate":                      self = .accumulate
        case "additive":                        self = .additive
        case "alignment-baseline":              self = .alignmentBaseline
        case "allowReorder":                    self = .allowReorder
        case "alphabetic":                      self = .alphabetic
        case "amplitude":                       self = .amplitude
        case "arabic-form":                     self = .arabicForm
        case "ascent":                          self = .ascent
        case "attributeName":                   self = .attributeName
        case "attributeType":                   self = .attributeType
        case "autoReverse":                     self = .autoReverse
        case "azimuth":                         self = .azimuth
        
        case "baseFrequency":                   self = .baseFrequency
        case "baseline-shift":                  self = .baselineShift
        case "baseProfile":                     self = .baseProfile
        case "bbox":                            self = .bbox
        case "begin":                           self = .begin
        case "bias":                            self = .bias
        case "by":                              self = .by
        
        
        case "calcMode":                        self = .calcMode
        case "cap-height":                      self = .capHeight
        case "class":                           self = .class
        case "clip":                            self = .clip
        case "clipPathUnits":                   self = .clipPathUnits
        case "clip-path":                       self = .clipPath
        case "clip-rule":                       self = .clipRule
        case "color":                           self = .color
        case "color-interpolation":             self = .colorInterpolation
        case "color-interpolation-filters":     self = .colorInterpolationFilters
        case "color-profile":                   self = .colorProfile
        case "color-rendering":                 self = .colorRendering
        case "contentScriptType":               self = .contentScriptType
        case "contentStyleType":                self = .contentStyleType
        case "cursor":                          self = .cursor
        case "cx":                              self = .cx
        case "cy":                              self = .cy
       
        
        case "d":
            // @d:m321.572 27.037-4.867-10.92c-3.267-7.329-11.857-10.622-19.186-7.355l-73.936 32.958c-4.146 1.847-7.561 5.018-9.711 9.015l-42.924 79.79 36.12 19.431 39.607-73.624 67.542-30.109c7.329-3.267 10.622-11.857 7.355-19.186z
            
            /*
             @d:
             m (321.572, 27.037) (-4.867, -10.92)
             c (-3.267, -7.329) (-11.857, -10.622) (-19.186, -7.355)
             l (-73.936, 32.958)
             c (-4.146, 1.847) (-7.561, 5.018) (-9.711, 9.015)
             l (-42.924, 79.79) (36.12, 19.431) (39.607, -73.624) (67.542, -30.109)
             c (7.329, -3.267) (10.622, -11.857) (7.355, -19.186)
             z
             */
            
            
            // Extract sections
            var sections = [(SVGPathType, Range<String.Index>)]()
            var startIndex: String.Index? = nil
            var sectionType: SVGPathType? = nil
            
            for (i, character) in Array(value).enumerated() {
                guard let pathType = SVGPathType(data: character) else { continue }
                
                switch pathType {
                case .closePath:
                    sections.append((pathType, value.index(value.endIndex, offsetBy: -1)..<value.endIndex))
                    
                default:
                    if let type = sectionType, let start = startIndex {
                        sections.append((type, start..<value.index(value.startIndex, offsetBy: i)))
                        
                        startIndex  = nil
                        sectionType = nil
                    }
                    
                    let offset = i + 1
                    guard offset < value.count else { continue }
                    
                    sectionType = pathType
                    startIndex  = value.index(value.startIndex, offsetBy: offset)
                }
            }
            
            let formatter = NumberFormatter()
            let path = UIBezierPath()
            
            for (type, range) in sections {
                switch type {
                case .closePath:
                    path.close()
                    
                default:
                    let components = value[range].replacingOccurrences(of: "-", with: " -").components(separatedBy: " ").filter ({ $0 != "" }).compactMap { formatter.number(from: $0)?.floatValue }
                    guard components.count % 2 == 0 else {
                        log(.error, "Failed to parse points.")
                        return nil
                    }
                    
                    
                    for i in stride(from: 0, to: components.count, by: 2) {
                        let point = CGPoint(x: CGFloat(components[i]), y: CGFloat(components[i + 1]))
                        
                        switch type {
                        case .move:
                            path.move(to: point)
                            
                            
                        default:
                            break
                        }
                    }
                }
            }
            
            self = .d(path)
            
        case "decelerate":                      self = .decelerate
        case "descent":                         self = .descent
        case "diffuseConstant":                 self = .diffuseConstant
        case "direction":                       self = .direction
        case "display":                         self = .display
        case "divisor":                         self = .divisor
        case "dominant-baseline":               self = .dominantBaseline
        case "dur":                             self = .dur
        case "dx":                              self = .dx
        case "dy":                              self = .dy
        
        
        case "edgeMode":                        self = .edgeMode
        case "elevation":                       self = .elevation
        case "enable-background":               self = .enableBackground
        case "end":                             self = .end
        case "exponent":                        self = .exponent
        case "externalResourcesRequired":       self = .externalResourcesRequired
        
        
        case "fill":                            self = .fill(value.color)
        case "fill-opacity":                    self = .fillOpacity
        case "fill-rule":                       self = .fillRule
        case "filter":                          self = .filter
        case "filterRes":                       self = .filterRes
        case "filterUnits":                     self = .filterUnits
        case "flood-color":                     self = .floodColor
        case "flood-opacity":                   self = .floodOpacity
        case "font-family":                     self = .fontFamily
        case "font-size":                       self = .fontSize
        case "font-size-adjust":                self = .fontSizeAdjust
        case "font-stretch":                    self = .fontStretch
        case "font-style":                      self = .fontStyle
        case "font-variant":                    self = .fontVariant
        case "font-weight":                     self = .fontWeight
        case "format":                          self = .format
        case "from":                            self = .from
        case "fr":                              self = .fr
        case "fx":                              self = .fx
        case "fy":                              self = .fy
        
        
        case "g1":                              self = .g1
        case "g2":                              self = .g2
        case "glyph-name":                      self = .glyphName
        case "glyph-orientation-horizontal":    self = .glyphOrientationHorizontal
        case "glyph-orientation-vertical":      self = .glyphOrientationVertical
        case "glyphRef":                        self = .glyphRef
        case "gradientTransform":               self = .gradientTransform
        case "gradientUnits":                   self = .gradientUnits
        
            
        case "hanging":                         self = .hanging
        case "height":                          self = .height
        case "href":                            self = .href
        case "hreflang":                        self = .hreflang
        case "horiz-adv-x":                     self = .horizAdvX
        case "horiz-origin-x":                  self = .horizOriginX
        
        
        case "id":                              self = .id
        case "ideographic":                     self = .ideographic
        case "image-rendering":                 self = .imageRendering
        case "in":                              self = .in
        case "in2":                             self = .in2
        case "intercept":                       self = .intercept
        
        
        case "k":                               self = .k
        case "k1":                              self = .k1
        case "k2":                              self = .k2
        case "k3":                              self = .k3
        case "k4":                              self = .k4
        case "kernelMatrix":                    self = .kernelMatrix
        case "kernelUnitLength":                self = .kernelUnitLength
        case "kerning":                         self = .kerning
        case "keyPoints":                       self = .keyPoints
        case "keySplines":                      self = .keySplines
        case "keyTimes":                        self = .keyTimes
        
        
        case "lang":                            self = .lang
        case "lengthAdjust":                    self = .lengthAdjust
        case "letter-spacing":                  self = .letterSpacing
        case "lighting-color":                  self = .lightingColor
        case "limitingConeAngle":               self = .limitingConeAngle
        case "local":                           self = .local
        
        
        case "marker-end":                      self = .markerEnd
        case "marker-mid":                      self = .markerMid
        case "marker-start":                    self = .markerStart
        case "markerHeight":                    self = .markerHeight
        case "markerUnits":                     self = .markerUnits
        case "markerWidth":                     self = .markerWidth
        case "mask":                            self = .mask
        case "maskContentUnits":                self = .maskContentUnits
        case "maskUnits":                       self = .maskUnits
        case "mathematical":                    self = .mathematical
        case "max":                             self = .max
        case "media":                           self = .media
        case "method":                          self = .method
        case "min":                             self = .min
        case "mode":                            self = .mode
        
        
        case "name":                            self = .name
        case "numOctaves":                      self = .numOctaves
        
        
        case "offset":                          self = .offset
        case "opacity":                         self = .opacity
        case "operator":                        self = .operator
        case "order":                           self = .order
        case "orient":                          self = .orient
        case "orientation":                     self = .orientation
        case "origin":                          self = .origin
        case "overflow":                        self = .overflow
        case "overline-position":               self = .overlinePosition
        case "overline-thickness":              self = .overlineThickness
        
        
        case "panose-1":                        self = .panose1
        case "paint-order":                     self = .paintOrder
        case "path":                            self = .path
        case "pathLength":                      self = .pathLength
        case "patternContentUnits":             self = .patternContentUnits
        case "patternTransform":                self = .patternTransform
        case "patternUnits":                    self = .patternUnits
        case "ping":                            self = .ping
        case "pointer-events":                  self = .pointerEvents
        case "points":                          self = .points
        case "pointsAtX":                       self = .pointsAtX
        case "pointsAtY":                       self = .pointsAtY
        case "pointsAtZ":                       self = .pointsAtZ
        case "preserveAlpha":                   self = .preserveAlpha
        case "preserveAspectRatio":             self = .preserveAspectRatio
        case "primitiveUnits":                  self = .primitiveUnits
        
        
        case "r":                               self = .r
        case "radius":                          self = .radius
        case "referrerPolicy":                  self = .referrerPolicy
        case "refX":                            self = .refX
        case "refY":                            self = .refY
        case "rel":                             self = .rel
        case "rendering-intent":                self = .renderingIntent
        case "repeatCount":                     self = .repeatCount
        case "repeatDur":                       self = .repeatDur
        case "requiredExtensions":              self = .requiredExtensions
        case "requiredFeatures":                self = .requiredFeatures
        case "restart":                         self = .restart
        case "result":                          self = .result
        case "rotate":                          self = .rotate
        case "rx":                              self = .rx
        case "ry":                              self = .ry
        
        
        case "scale":                           self = .scale
        case "seed":                            self = .seed
        case "shape-rendering":                 self = .shapeRendering
        case "slope":                           self = .slope
        case "spacing":                         self = .spacing
        case "specularConstant":                self = .specularConstant
        case "specularExponent":                self = .specularExponent
        case "speed":                           self = .speed
        case "spreadMethod":                    self = .spreadMethod
        case "startOffset":                     self = .startOffset
        case "stdDeviation":                    self = .stdDeviation
        case "stemh":                           self = .stemh
        case "stemv":                           self = .stemv
        case "stitchTiles":                     self = .stitchTiles
        case "stop-color":                      self = .stopColor
        case "stop-opacity":                    self = .stopOpacity
        case "strikethrough-position":          self = .strikethroughPosition
        case "strikethrough-thickness":         self = .strikethroughThickness
        case "string":                          self = .string
        case "stroke":                          self = .stroke
        case "stroke-dasharray":                self = .strokeDasharray
        case "stroke-dashoffset":               self = .strokeDashoffset
        case "stroke-linecap":                  self = .strokeLinecap
        case "stroke-linejoin":                 self = .strokeLinejoin
        case "stroke-miterlimit":               self = .strokeMiterlimit
        case "stroke-opacity":                  self = .strokeOpacity
        case "stroke-width":                    self = .strokeWidth
        case "style":                           self = .style
        case "surfaceScale":                    self = .surfaceScale
        case "systemLanguage":                  self = .systemLanguage
        
        
        case "tabindex":                        self = .tabindex
        case "tableValues":                     self = .tableValues
        case "target":                          self = .target
        case "targetX":                         self = .targetX
        case "targetY":                         self = .targetY
        case "text-anchor":                     self = .textAnchor
        case "text-decoration":                 self = .textDecoration
        case "text-rendering":                  self = .textRendering
        case "textLength":                      self = .textLength
        case "to":                              self = .to
        case "transform":                       self = .transform
        case "transform-origin":                self = .transformOrigin
        case "type":                            self = .type
        
        
        case "u1":                              self = .u1
        case "u2":                              self = .u2
        case "underline-position":              self = .underlinePosition
        case "underline-thickness":             self = .underlineThickness
        case "unicode":                         self = .unicode
        case "unicode-bidi":                    self = .unicodeBidi
        case "unicode-range":                   self = .unicodeRange
        case "units-per-em":                    self = .unitsPerEm
        
        
        case "v-alphabetic":                    self = .vAlphabetic
        case "v-hanging":                       self = .vHanging
        case "v-ideographic":                   self = .vIdeographic
        case "v-mathematical":                  self = .vMathematical
        case "values":                          self = .values
        case "vector-effect":                   self = .vectorEffect
        case "version":                         self = .version
        case "vert-adv-y":                      self = .vertAdvY
        case "vert-origin-x":                   self = .vertOriginX
        case "vert-origin-y":                   self = .vertOriginY
        case "viewBox":                         self = .viewBox
        case "viewTarget":                      self = .viewTarget
        case "visibility":                      self = .visibility
        
    
        case "width":                           self = .width
        case "widths":                          self = .widths
        case "word-spacing":                    self = .wordSpacing
        case "writing-mode":                    self = .writingMode
        
            
        case "x":                               self = .x
        case "x-height":                        self = .xHeight
        case "x1":                              self = .x1
        case "x2":                              self = .x2
        case "xChannelSelector":                self = .xChannelSelector
        case "xlink:actuate":                   self = .xlinkActuate
        case "xlink:arcrole":                   self = .xlinkArcrole
        case "xlink:href":                      self = .xlinkHref
        case "xlink:role":                      self = .xlinkRole
        case "xlink:show":                      self = .xlinkShow
        case "xlink:title":                     self = .xlinkTitle
        case "xlink:type":                      self = .xlinkType
        case "xml:base":                        self = .xmlBase
        case "xml:lang":                        self = .xmlLang
        case "xml:space":                       self = .xmlSpace
        
        case "y":                               self = .y
        case "y1":                              self = .y1
        case "y2":                              self = .y2
        case "yChannelSelector":                self = .yChannelSelector
        
        case "z":                               self = .z
        case "zoomAndPan":                      self = .zoomAndPan
            
        default:                                return nil
        }
    }
}
