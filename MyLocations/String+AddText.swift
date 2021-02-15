//
//  String+AddText.swift
//  MyLocations
//
//  Created by Stefan Minchevski on 3.2.21.
//

import Foundation

extension String {
    mutating func add(text: String?, separatedBy separator: String = "") {
        if let text = text {
            if !isEmpty {
                self += separator
            }
            self += text
        }
    }
}
