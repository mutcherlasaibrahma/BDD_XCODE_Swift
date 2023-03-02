//
//  TAUEyesTest.swift
//  TAUUITests
//
//  Created by saibrahma.mutcherla on 02/03/23.
//  Copyright © 2023 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest
import EyesXCUI

class TAUEyesTest: TAUUITestBase {
    
func testTAUWithEyesXCUI() {
    
        // Start the test.
        eyes.open(withApplicationName: "TAU", testName: "Live Demo of Eyes XCUI SDK!")
        
        // Visual checkpoint #1.
        eyes.check(withTag: "TAU", andSettings: Target.window().timeout(inSeconds: 5))
        
        let enrollButton = app.buttons["enrollButton"]
        // Click the "Click me!" button.
        enrollButton.tap()
        
        // Visual checkpoint #2.
        eyes.check(withTag: "Please Enter City", andSettings: Target.window())
        
        let thumbUpOrBugImageView = app.images["TAUlogo"]
        
        // Visual checkpoint #3
        eyes.check(withTag: "Thumb up", andSettings: Target.element(thumbUpOrBugImageView))
        
       
    }
}
