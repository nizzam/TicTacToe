//
//  Extensions.swift
//  TicTacToe
//
//  Created by Mont Leo on 19/01/2018.
//  Copyright © 2018 nizzam. All rights reserved.
//

import Foundation

extension Array where Element: Equatable {
    func contains(array: [Element]) -> Bool {
        for item in array {
            if !self.contains(item) { return false }
        }
        return true
    }
}
