//
//  RoVa_LogDataTests.swift
//  
//
//  Created by Francisco Romero on 05/07/24.
//

import XCTest
@testable import RoVa_Log

final class RoVa_LogDataTests: XCTestCase, RoVa_Log{

    override func setUpWithError() throws {
        RoVa_LogMgr.logData = [.icon,.className,.function]
    }

    
    func testDataIcon() throws {
        RoVa_LogMgr.logData = [.icon]
        logDebug()
        logInfo()
        logWarning()
        logError()
        logVerbose()
    }
    
    func testDataClassName() throws {
        RoVa_LogMgr.logData = [.className]
        logDebug()
        logInfo()
        logWarning()
        logError()
        logVerbose()
    }
    
    func testDataClassNameFunction() throws {
        RoVa_LogMgr.logData = [.className,.function]
        logDebug()
        logInfo()
        logWarning()
        logError()
        logVerbose()
    }
    
    func testDataFunction() throws {
        RoVa_LogMgr.logData = [.function]
        logDebug()
        logInfo()
        logWarning()
        logError()
        logVerbose()
    }
    
    func testDataLine() throws {
        RoVa_LogMgr.logData = [.line]
        logDebug()
        logInfo()
        logWarning()
        logError()
        logVerbose()
    }

}
