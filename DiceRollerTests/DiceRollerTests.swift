//
//  DiceRollerTests.swift
//  DiceRollerTests
//
//  Created by Lasse Hansen on 01.02.18.
//  Copyright © 2018 Lasse Hansen. All rights reserved.
//

import XCTest
@testable import DiceRoller

class DiceRollerTests: XCTestCase {
    func testExample() {
        for _ in 1...10 {
            let result = roll1D6()
            XCTAssert(result > 0)
            XCTAssert(result <= 6)
        }
    }
}
