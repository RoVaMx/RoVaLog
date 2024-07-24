//
//  RoVaLogTests.swift
//
//
//  Created by Francisco Romero on 04/07/24.
//

import XCTest
@testable import RoVa_Log

final class RoVaLogTests: XCTestCase, RoVa_Log{

    struct StructMock: RoVa_Log {
        func debugShort() {
            logDebug()
            logDebug(msg: "Test String")
        }
        func debugVeryLongFunctionName() {
            logDebug()
            logDebug(msg: "Test String")
        }
        func infoShort() {
            logInfo()
            logInfo(msg: "Test String")
        }
        func infoVeryLongFunctionName() {
            logInfo()
            logInfo(msg: "Test String")
        }
        func warningShort() {
            logWarning()
            logWarning(msg: "Test String")
        }
        func warningVeryLongFunctionName() {
            logWarning()
            logWarning(msg: "Test String")
        }
        func errorShort() {
            logError()
            logError(msg: "Test String")
        }
        func errorVeryLongFunctionName() {
            logError()
            logError(msg: "Test String")
        }
        func verboseShort() {
            logVerbose()
            logVerbose(msg: "Test String")
        }
        func verboseVeryLongFunctionName() {
            logVerbose()
            logVerbose(msg: "Test String")
        }
        
        func sound() {
            logUISount()
            logUISount(msg: "any_sound.mp3")
        }
        func vibration() {
            logUIVibration()
            logUIVibration(msg: "vibration")
        }
        func uiInput() {
            logUIInput()
            logUIInput(msg:"input")
        }
        func uiOutput() {
            logUIOutput()
            logUIOutput(msg: "output")
        }
        
        func launchApp() {
            logAppLaunch()
            logAppLaunch(msg: "launch")
        }
        func confConnection() {
            logAppConfConnection()
            logAppConfConnection(msg: "message")
        }
        func appScene() {
            logAppScene()
            logAppScene(msg: "scene")
        }
    }

    class ClassLongNameMock: RoVa_Log {
        func debugShort() {
            logDebug()
            logDebug(msg: "Test String")
        }
        func debugVeryLongFunctionName() {
            logDebug()
            logDebug(msg: "Test String")
        }
        func infoShort() {
            logInfo()
            logInfo(msg: "Test String")
        }
        func infoVeryLongFunctionName() {
            logInfo()
            logInfo(msg: "Test String")
        }
        func warningShort() {
            logWarning()
            logWarning(msg: "Test String")
        }
        func warningVeryLongFunctionName() {
            logWarning()
            logWarning(msg: "Test String")
        }
        func errorShort() {
            logError()
            logError(msg: "Test String")
        }
        func errorVeryLongFunctionName() {
            logError()
            logError(msg: "Test String")
        }
        func verboseShort() {
            logVerbose()
            logVerbose(msg: "Test String")
        }
        func verboseVeryLongFunctionName() {
            logVerbose()
            logVerbose(msg: "Test String")
        }
        
        func sound() {
            logUISount()
            logUISount(msg: "any_soun`d.mp3")
        }
        func vibration() {
            logUIVibration()
            logUIVibration(msg: "vibration")
        }
        func uiInput() {
            logUIInput()
            logUIInput(msg:"input")
        }
        func uiOutput() {
            logUIOutput()
            logUIOutput(msg: "output")
        }
        
        func launchApp() {
            logAppLaunch()
            logAppLaunch(msg: "launch")
        }
        func confConnection() {
            logAppConfConnection()
            logAppConfConnection(msg: "message")
        }
        func appScene() {
            logAppScene()
            logAppScene(msg: "scene")
        }
    }

    var sm = StructMock()
    var cm = ClassLongNameMock()

    override func setUpWithError() throws {
        RoVa_LogMgr.logData = [.icon,.className,.function,.line]
    }
    
    func testLogDebugStruct() throws {
        sm.debugShort()
        sm.debugVeryLongFunctionName()
    }

    func testLogDebugClass() throws {
        cm.debugShort()
        cm.debugVeryLongFunctionName()
    }

    func testLogInfoStruct() throws {
        sm.infoShort()
        sm.infoVeryLongFunctionName()
    }

    func testLogInfoClass() throws {
        cm.infoShort()
        cm.infoVeryLongFunctionName()
    }

    func testLogWarningStruct() throws {
        sm.warningShort()
        sm.warningVeryLongFunctionName()
    }

    func testLogWarningClass() throws {
        cm.warningShort()
        cm.warningVeryLongFunctionName()
    }

    func testLogErrorStruct() throws {
        sm.errorShort()
        sm.errorVeryLongFunctionName()
    }

    func testLogErrorClass() throws {
        cm.errorShort()
        cm.errorVeryLongFunctionName()
    }

    func testLogVerboseStruct() throws {
        sm.verboseShort()
        sm.verboseVeryLongFunctionName()
    }

    func testLogVerboseClass() throws {
        cm.verboseShort()
        cm.verboseVeryLongFunctionName()
    }
    
    func testUIStruct() throws {
        sm.sound()
        sm.vibration()
        sm.uiInput()
        sm.uiOutput()
        sm.launchApp()
        sm.confConnection()
        sm.appScene()
    }

    func testUIClass() throws {
        cm.sound()
        cm.vibration()
        cm.uiInput()
        cm.uiOutput()
        cm.launchApp()
        cm.confConnection()
        cm.appScene()
    }
    
}
