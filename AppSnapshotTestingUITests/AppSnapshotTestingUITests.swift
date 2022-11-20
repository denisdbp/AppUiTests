//
//  AppSnapshotTestingUITests.swift
//  AppSnapshotTestingUITests
//
//  Created by Admin on 20/11/22.
//

import XCTest
import SnapshotTesting
@testable import AppSnapshotTesting

class AppSnapshotTestingUITests: XCTestCase {
    
    func testSnapshot(){
        let loginViewController:LoginViewController = LoginViewController()
        let result = assertSnapshot(matching: loginViewController, as: .image(on: .iPhoneX))
        XCTAssertNotNil(result)
    }
}
