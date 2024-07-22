//
//  RoVa_LogMgrTests.swift
//  
//
//  Created by Francisco Romero on 04/07/24.
//

import XCTest
@testable import RoVa_Log

final class RoVa_LogMgrTests: XCTestCase {

    func testLogLevel() throws {
        let initalValue = RoVa_LogMgr.logLevel
        RoVa_LogMgr.logLevel = [.debug]
        XCTAssert(initalValue != RoVa_LogMgr.logLevel)
    }
    
    func testLogData() throws {
        let initalValue = RoVa_LogMgr.logData
        RoVa_LogMgr.logData = [.icon,.className,.function]
        XCTAssert(initalValue != RoVa_LogMgr.logData)
    }
    

}
