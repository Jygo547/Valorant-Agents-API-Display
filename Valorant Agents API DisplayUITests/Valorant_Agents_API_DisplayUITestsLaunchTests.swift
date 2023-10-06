//
//  Valorant_Agents_API_DisplayUITestsLaunchTests.swift
//  Valorant Agents API DisplayUITests
//
//  Created by ATLAS Checkout 6 Guest on 10/6/23.
//

import XCTest

final class Valorant_Agents_API_DisplayUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
