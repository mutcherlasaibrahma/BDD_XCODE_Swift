//
//  TAUUITests.swift
//  TAUUITests
//
//  Created by saibrahma.mutcherla on 01/03/23.
//  Copyright © 2023 Shashikant Jagtap. All rights reserved.
//

import XCTest

final class TAUUITests: TAUUITestBase {
    
    func testAllElements() {
    
        app.launch()
        print("-----APP Launched--")
        
        let welcomeMessageExits = app/*@START_MENU_TOKEN@*/.staticTexts["welcomeMessage"]/*[[".staticTexts[\"Welcome to XCUITest Course \"]",".staticTexts[\"welcomeMessage\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        XCTAssertTrue(welcomeMessageExits.waitForExistence(timeout: 2))
        
        let enrollText = app.staticTexts["Enroll"]
        assert(enrollText.exists)
        print("Enroll Verification of Text is Completed")
        
        let clickOnEnrollWithoutCity = app.staticTexts["Please Enter City"]
        enrollText.tap();
        assert(clickOnEnrollWithoutCity.waitForExistence(timeout: 3))
        print("Verification of Error Message Succesfully---")
        
        print("----Verification Thankyou Message ---")
        testThankyouMessage();
     
    }
    
    func testThankyouMessage(){
        
        let enterYourCity = app.textFields["city"]
        enterYourCity.tap();
        enterYourCity.typeText("London")
        
        app.buttons["Emoji"].tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["ABC"]/*[[".buttons[\"Next keyboard\"].staticTexts[\"ABC\"]",".staticTexts[\"ABC\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let  enrollBtn =  app.staticTexts["Enroll"]
        enrollBtn.tap();
        
        let thanksMessage = app.staticTexts["Thanks for Joining!"]
        assert(thanksMessage.waitForExistence(timeout: 3))
                
    }
}
