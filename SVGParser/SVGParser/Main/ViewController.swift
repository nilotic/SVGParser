//
//  ViewController.swift
//  SVGParser
//
//  Created by Den Jo on 2020/11/02.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: - Value
    // MARK: Private
    private let dataManager = DataManager()
    
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        guard dataManager.parse() == true else {
            debugPrint("Failed to parse a svg")
            return
        }
    }
}

