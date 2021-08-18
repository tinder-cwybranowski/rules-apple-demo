//
//  ExampleTests.swift
//  Example
//
//  Created by Connor Wybranowski on 8/18/21.
//

import XCTest

@testable import Example

class ExampleTests: XCTestCase {

    func testValue() {
        XCTAssertEqual(Example().value, "Hello World")
    }
}
