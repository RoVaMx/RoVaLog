//
//  RoVa_LogLevel.swift
//
//
//  Created by Francisco Romero on 22/07/24.
//

import Foundation

public enum RoVa_LogLevel: Int {
    case debug   = 0b00000001
    case info    = 0b00000010
    case warning = 0b00000100
    case error   = 0b00001000
    case verbose = 0b00010000

    package static func levelFrom(_ number: Int) -> [RoVa_LogLevel] {
        var level: [RoVa_LogLevel] = []
        if debug.flagIsActive(in: number) {
            level.append(.debug)
        }
        if info.flagIsActive(in: number) {
            level.append(.info)
        }
        if warning.flagIsActive(in: number) {
            level.append(.warning)
        }
        if error.flagIsActive(in: number) {
            level.append(.error)
        }
        if verbose.flagIsActive(in: number) {
            level.append(.verbose)
        }
        return level
    }

    package func flagIsActive(in number: Int) -> Bool {
        (self.rawValue & number) != 0
    }
}
