//
//  RoVa_LogLevelTest.swift
//  
//
//  Created by Francisco Romero on 04/07/24.
//

import XCTest
@testable import RoVa_Log

final class RoVa_LogLevelTest: XCTestCase {

    func testLevelFromDebug() throws {
        let intLevel: Int = RoVa_LogLevel.debug.rawValue
        let array = RoVa_LogLevel.levelFrom(intLevel)
        XCTAssert(array.contains(.debug))
        XCTAssert(!array.contains(.info))
        XCTAssert(!array.contains(.warning))
        XCTAssert(!array.contains(.error))
        XCTAssert(!array.contains(.verbose))
    }

    func testLevelFromInfo() throws {
        let intLevel: Int = RoVa_LogLevel.info.rawValue
        let array = RoVa_LogLevel.levelFrom(intLevel)
        XCTAssert(!array.contains(.debug))
        XCTAssert(array.contains(.info))
        XCTAssert(!array.contains(.warning))
        XCTAssert(!array.contains(.error))
        XCTAssert(!array.contains(.verbose))
    }

    func testLevelFromWarning() throws {
        let intLevel: Int = RoVa_LogLevel.warning.rawValue
        let array = RoVa_LogLevel.levelFrom(intLevel)
        XCTAssert(!array.contains(.debug))
        XCTAssert(!array.contains(.info))
        XCTAssert(array.contains(.warning))
        XCTAssert(!array.contains(.error))
        XCTAssert(!array.contains(.verbose))
    }

    func testLevelFromError() throws {
        let intLevel: Int = RoVa_LogLevel.error.rawValue
        let array = RoVa_LogLevel.levelFrom(intLevel)
        XCTAssert(!array.contains(.debug))
        XCTAssert(!array.contains(.info))
        XCTAssert(!array.contains(.warning))
        XCTAssert(array.contains(.error))
        XCTAssert(!array.contains(.verbose))
    }

    func testLevelFromVerbose() throws {
        let intLevel: Int = RoVa_LogLevel.verbose.rawValue
        let array = RoVa_LogLevel.levelFrom(intLevel)
        XCTAssert(!array.contains(.debug))
        XCTAssert(!array.contains(.info))
        XCTAssert(!array.contains(.warning))
        XCTAssert(!array.contains(.error))
        XCTAssert(array.contains(.verbose))
    }

    func testLevelFromMixA() throws {
        var intLevel: Int = RoVa_LogLevel.debug.rawValue
        intLevel += RoVa_LogLevel.info.rawValue
        let array = RoVa_LogLevel.levelFrom(intLevel)
        XCTAssert(array.contains(.debug))
        XCTAssert(array.contains(.info))
        XCTAssert(!array.contains(.warning))
        XCTAssert(!array.contains(.error))
        XCTAssert(!array.contains(.verbose))
    }

    func testLevelFromMixB() throws {
        var intLevel: Int = RoVa_LogLevel.debug.rawValue
        intLevel += RoVa_LogLevel.info.rawValue
        intLevel += RoVa_LogLevel.warning.rawValue
        let array = RoVa_LogLevel.levelFrom(intLevel)
        XCTAssert(array.contains(.debug))
        XCTAssert(array.contains(.info))
        XCTAssert(array.contains(.warning))
        XCTAssert(!array.contains(.error))
        XCTAssert(!array.contains(.verbose))
    }

    func testLevelFromMixC() throws {
        var intLevel: Int = RoVa_LogLevel.debug.rawValue
        intLevel += RoVa_LogLevel.info.rawValue
        intLevel += RoVa_LogLevel.warning.rawValue
        intLevel += RoVa_LogLevel.error.rawValue
        let array = RoVa_LogLevel.levelFrom(intLevel)
        XCTAssert(array.contains(.debug))
        XCTAssert(array.contains(.info))
        XCTAssert(array.contains(.warning))
        XCTAssert(array.contains(.error))
        XCTAssert(!array.contains(.verbose))
    }

    func testLevelFromMixD() throws {
        var intLevel: Int = RoVa_LogLevel.debug.rawValue
        intLevel += RoVa_LogLevel.info.rawValue
        intLevel += RoVa_LogLevel.warning.rawValue
        intLevel += RoVa_LogLevel.error.rawValue
        intLevel += RoVa_LogLevel.verbose.rawValue
        let array = RoVa_LogLevel.levelFrom(intLevel)
        XCTAssert(array.contains(.debug))
        XCTAssert(array.contains(.info))
        XCTAssert(array.contains(.warning))
        XCTAssert(array.contains(.error))
        XCTAssert(array.contains(.verbose))
    }

}
