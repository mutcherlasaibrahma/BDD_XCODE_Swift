//
//  TAUUITestBase.swift
//  TAUUITests
//
//  Created by saibrahma.mutcherla on 01/03/23.
//  Copyright © 2023 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest
import EyesXCUI

class TAUUITestBase: XCTestCase {
    
    var app = XCUIApplication()
    var eyes = Eyes()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch();
        eyes.apiKey = "CjvslRXjNwQcQvJzeXuitBxwciNciQyTdYNfQieGmlM110";
    }

    override func tearDownWithError() throws {
        app.terminate()
        
        // End the test.
        do {
            try eyes.close()
        } catch {
            eyes.abortIfNotClosed()
        }
    }
    
}
