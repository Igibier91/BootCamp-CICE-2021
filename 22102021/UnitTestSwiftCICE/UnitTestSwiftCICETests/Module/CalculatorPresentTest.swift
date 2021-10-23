//
//  CalculatorPresentTest.swift
//  UnitTestSwiftCICETests
//
//  Created by Ignacio Gilabert Bernal on 22/10/21.
//

import XCTest
// Always add this
@testable import UnitTestSwiftCICE

class CalculatorPresentTest: XCTestCase {
    
    var calculatorPresenter: CalculatorPresenter!
    
    override func setUp(){
        print("YYY setUp")
        calculatorPresenter = CalculatorPresenter()
    }

    override func tearDown(){
        print("YYY tearDown")
        calculatorPresenter = nil
    }

    func testCalculatorNotNil() {
        print("YYY testCalculatorNotNil")
        XCTAssertNotNil(calculatorPresenter)
        XCTAssertEqual(calculatorPresenter.sumar(n1: 10, n2: 20), 30)
    }
    
    func test_Sumar_InputCorrect_One_OKResult(){
        print("YYY test_Sumar_InputCorrect_One_OKResult")
        let resultadoEsperado = 30
        var resultadoActual: Int
        resultadoActual = calculatorPresenter.sumar(n1: 10, n2: 20)
        XCTAssertEqual(resultadoActual, resultadoEsperado)

    }
    func test_Sumar_InputCorrect_Two_OKResult(){
        print("YYY test_Sumar_InputCorrect_Two_OKResult")
        let resultadoEsperado = 11
        var resultadoActual: Int
        resultadoActual = calculatorPresenter.sumar(n1: 7, n2: 4)
        XCTAssertEqual(resultadoActual, resultadoEsperado)
    }
    
    func test_Restar_InputCorrect_One_OKResult(){
        print("YYY test_Restar_InputCorrect_One_OKResult")
        let resultadoEsperado = 3
        var resultadoActual: Int
        resultadoActual = calculatorPresenter.restar(n1: 7, n2: 4)
        XCTAssertEqual(resultadoActual, resultadoEsperado)
    }
    func test_Restar_InputCorrect_Two_OKResult(){
        print("YYY test_Restar_InputCorrect_Two_OKResult")
        let resultadoEsperado = -3
        var resultadoActual: Int
        resultadoActual = calculatorPresenter.restar(n1: 4, n2: 7)
        XCTAssertEqual(resultadoActual, resultadoEsperado)
    }
    
    func test_Dividir_Zero() {
        print("YYY test_Dividir_Zero")
        XCTAssertEqual(try calculatorPresenter.dividir(n1: 4, n2: 2), 2)
        XCTAssertThrowsError(try calculatorPresenter.dividirByZero(n1: 4, n2: 0))
    }
    //MARK: - Test Methods
    func test_Assert_Types() {
        print("YYY test_Assert_Types")
        XCTAssertTrue(1 == 1)
        XCTAssertFalse(1 == 2)
        XCTAssertNil(nil)
        XCTAssertEqual("nacho", "Nacho")
        XCTAssertGreaterThan(10, 1)
    }
    
    
    
    
}
