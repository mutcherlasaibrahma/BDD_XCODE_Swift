//
//  TAUUITestBase.swift
//  TAUUITests
//
//  Created by saibrahma.mutcherla on 01/03/23.
//  Copyright © 2023 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

class TAUUITestBase: XCTestCase {
    
    var app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch();
    }

    override func tearDownWithError() throws {
        app.terminate()
    }
    
}
