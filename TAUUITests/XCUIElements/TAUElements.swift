//
//  TAUElements.swift
//  TAUUITests
//
//  Created by saibrahma.mutcherla on 02/03/23.
//  Copyright © 2023 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

enum TAUScreen : String{
    
    case welcomeMessage = "welcomeMessage"
    case taulogo = "TAUlogo"
    case enterCityLabel = "enterCity"
    case cityTextField = "city"
    case enrollButton = "enrollButton"
    case thankYouMessage = "Thanks for Joining!"
    case errorMessage = "Please Enter City"
    case Emoji = "Emoji"
    case staticTextsAbc = "ABC"

    var element: XCUIElement {
        switch self {
        case .welcomeMessage,.enterCityLabel,.errorMessage,.staticTextsAbc,.thankYouMessage:
            return XCUIApplication().staticTexts[self.rawValue]
            
        case .cityTextField:
            return XCUIApplication().textFields[self.rawValue]
            
        case .enrollButton,.Emoji:
            return XCUIApplication().buttons[self.rawValue]
            
        case .taulogo:
            return XCUIApplication().images[self.rawValue]
        }
    }
}

