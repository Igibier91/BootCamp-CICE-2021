//
//  SplashPresenterTest.swift
//  CiceCuponTests
//
//  Created by Ignacio Gilabert Bernal on 16/10/21.
//

import XCTest
@testable import CiceCupon

class SplashPresenterTest: XCTestCase {
    
    var splashPre: SplashPresenterInputProtocol = SplashPresenter()

    override func setUpWithError() throws {
//        let aux = splashPre.getInformationObject()
//      XCTAssertNotNil(aux)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
