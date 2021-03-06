//
//  DataManager.swift
//  SVGParser
//
//  Created by Den Jo on 2020/11/02.
//

import Foundation

final class DataManager: NSObject {
    
    // MARK: - Value
    // MARK: Private
    private var data: Data? {
        do {
            guard let fileUrl = Bundle.main.url(forResource: "001", withExtension: "svg") else {
                debugPrint("Failed to load a svg file")
                return nil
            }
            
            return try Data(contentsOf: fileUrl)
            
        } catch {
            debugPrint(error.localizedDescription)
            return nil
        }
    }
    
    
    // MARK: - Function
    // MARK: Public
    func parse() -> Bool {
        guard let data = data else { return false }
        
        let parser = SVGParser(data: data)
        parser.parse()
        
        return true
    }
}
