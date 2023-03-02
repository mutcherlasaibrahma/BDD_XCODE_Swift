//
//  TAUSteps.swift
//  TAUUITests
//
//  Created by saibrahma.mutcherla on 02/03/23.
//  Copyright © 2023 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

extension TAUUITestBase {
    
    func givenAppIsReady() {
        
            XCTContext.runActivity(named: "Given App Is Ready"){ _ in
                XCTAssertTrue(TAUScreen.enrollButton.element.exists)
            
        }
    }
    
    func whenIEnter(city: String) {
        
            XCTContext.runActivity(named: "When I Enter the \(city) "){ _ in
            
            let enterYourCity = TAUScreen.cityTextField.element
            enterYourCity.tap();
            enterYourCity.typeText(city)
            
            TAUScreen.Emoji.element.tap();
            TAUScreen.staticTextsAbc.element.tap()
           
        }
    }
    
    func whenIEnrolled() {
            XCTContext.runActivity(named: "When I Enrolled "){ _ in
            let  enrollBtn =  TAUScreen.enrollButton.element
            enrollBtn.tap();
        }
        
    }
    
    func thenIshouldSeeThankYouMessage() {
            XCTContext.runActivity(named: "Then I Should See Thank You Joining Message "){ _ in
            let thanksMessage = TAUScreen.thankYouMessage.element
            XCTAssertTrue(thanksMessage.waitForExistence(timeout: 3))
        }
    }
}
