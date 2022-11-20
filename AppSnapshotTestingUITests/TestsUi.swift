//
//  TestUi.swift
//  AppSnapshotTestingUITests
//
//  Created by Admin on 20/11/22.
//

import XCTest

class TestsUi: XCTestCase {
    
    func testUi(){
        let app = XCUIApplication()
        app.launch()
        
        let emailTextField = app.textFields["email"]
        emailTextField.tap()
        emailTextField.typeText("teste@teste.com")
        XCTAssertTrue(emailTextField.exists)
        
        let passwordTextField = app.secureTextFields["password"]
        passwordTextField.tap()
        passwordTextField.typeText("123456")
        XCTAssertTrue(passwordTextField.exists)
        
        let loginButton = app.buttons["login"]
        loginButton.tap()
        XCTAssertTrue(loginButton.exists)
        
        XCTAssertNotNil(app.staticTexts["Ola mundo"])
    }
}
