//
//  BDDTest.swift
//  TAUUITests
//
//  Created by saibrahma.mutcherla on 01/03/23.
//  Copyright © 2023 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

class BDDTest: TAUUITestBase {
    
    func testCompleteAppInBDDStyle(){
        givenAppIsReady()
        whenIEnter(city:"London")
        whenIEnrolled()
        thenIshouldSeeThankYouMessage()
    }
}




