//
//  RoVa_LogFormatter.swift
//
//
//  Created by Francisco Romero on 22/07/24.
//

import Foundation

package struct RoVa_LogFormatter {
    
    // Common Methods
    static let iconDebug: String = "🔎"
    static let iconInfo: String = "ℹ️"
    static let iconWarning: String = "⚠️"
    static let iconError: String = "❌"
    static let iconVerbose: String = "🗣️"
    
    // Package Icons
    static let iconUIInput: String = "👈"
    static let iconUIOutput: String = "📱"
    static let iconUISound: String = "🔊"
    static let iconUIVibration: String = "📳"
    static let iconAppLaunch: String = "🚀"
    static let iconAppConfConnection: String = "🔌"
    static let iconAppScene: String = "🌠"
    static let iconThread: String = "🧵"
    
    // TCA
    static let iconTCAStore     : String = "🗄️"
    static let iconTCAReducer   : String = "🌀"
    static let iconTCAState     : String = "🗂️"
    static let iconTCAAction    : String = "⚡"
    static let iconTCADependency: String = "🧰"
    
    private static var maxClassName: Int = 0
    private static var maxFuncName: Int = 0

    static func logText(_ icon: String,
                        _ classN: String,
                        _ function: String = #function,
                        _ line: Int = #line,
                        msg: String? = nil) -> String {
        var text = "• "
        if RoVa_LogData.icon.flagIsActive(in: RoVa_LogMgr.logDataInt) {
            text += "\(icon) "
        }
        if RoVa_LogData.className.flagIsActive(in: RoVa_LogMgr.logDataInt) {
            text += "\(formatClass(classN))"
            if RoVa_LogData.function.flagIsActive(in: RoVa_LogMgr.logDataInt) {
                text += "."
            } else {
                text += " "
            }
        }
        if RoVa_LogData.function.flagIsActive(in: RoVa_LogMgr.logDataInt) {
            text += "\(formatFunc(function)) "
        }
        if RoVa_LogData.line.flagIsActive(in: RoVa_LogMgr.logDataInt) {
            text += "[\(formatLine(line))]"
        }
        if let message = msg {
            text += ": \(message)"
        }
        return text
    }

    private static func formatClass(_ classname: String) -> String {
        if classname.count > maxClassName {
            maxClassName = classname.count
        }
        return classname.fillLeft(to: maxClassName)
    }

    private static func formatFunc(_ function: String) -> String {
        let fnn = function.split(separator: "(")[0].description
        if fnn.count > maxFuncName {
            maxFuncName = fnn.count
        }
        return fnn.fillRight(to: maxFuncName)
    }

    private static func formatLine(_ line: Int) -> String {
        let lineStr = String(describing: line)
        return lineStr.fillLeft(to: 4, with: "0")
    }
}

fileprivate extension String {

    func fillLeft(to number: Int, with: String = " ") -> String {
        return String(
            repeating: with,
            count: number - self.count
        ) .appending(
            self
        )
    }

    func fillRight(to number: Int, with: String = " ") -> String {
        let string = self
        return string.appending(
            String(
                repeating: with,
                count: number - self.count
            )
        )
    }
}
