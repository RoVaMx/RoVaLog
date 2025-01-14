//
//  RoVa_LogMgr.swift
//
//
//  Created by Francisco Romero on 22/07/24.
//

import Foundation

public struct RoVa_LogMgr {

    // MARK: Provate static variable
    private static let limitClassName: Int = 10
    private static let limitFuncName: Int = 10

    // MARK: Static package variable
    package static var logLevelInt: Int = 0b00011111
    package static var logDataInt: Int = 0b00001111

    // MARK: Public static functions
    public static var logLevel: [RoVa_LogLevel] {
        get {
            RoVa_LogLevel.levelFrom(logLevelInt)
        }
        set {
            var newlevel = 0
            for level in newValue {
                newlevel += level.rawValue
            }
            logLevelInt = newlevel
        }
    }

    public static var logData: [RoVa_LogData] {
        get {
            RoVa_LogData.dataFrom(logDataInt)
        }
        set {
            var newData = 0
            for data in newValue {
                newData += data.rawValue
            }
            logDataInt = newData
        }
    }
}
