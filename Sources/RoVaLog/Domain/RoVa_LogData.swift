//
//  RoVa_LogData.swift
//
//
//  Created by Francisco Romero on 22/07/24.
//

import Foundation

public enum RoVa_LogData: Int {
    case icon      = 0b00000001
    case className = 0b00000010
    case function  = 0b00000100
    case line      = 0b00001000

    package static func dataFrom(_ number: Int) -> [RoVa_LogData] {
        var data: [RoVa_LogData] = []
        if icon.flagIsActive(in: number) {
            data.append(.icon)
        }
        if className.flagIsActive(in: number) {
            data.append(.className)
        }
        if function.flagIsActive(in: number) {
            data.append(.function)
        }
        if line.flagIsActive(in: number) {
            data.append(.line)
        }
        return data
    }

    package func flagIsActive(in number: Int) -> Bool {
        (self.rawValue & number) != 0
    }
}
