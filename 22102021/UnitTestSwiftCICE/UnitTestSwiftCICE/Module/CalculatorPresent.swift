//
//  CalculatorPresent.swift
//  UnitTestSwiftCICE
//
//  Created by Ignacio Gilabert Bernal on 22/10/21.
//

import Foundation

enum SomeError: Error {
    case ZeroError
}

final class CalculatorPresenter {
    func sumar(n1: Int, n2: Int) -> Int {
        return n1 + n2
    }
    
    func restar(n1: Int, n2: Int) -> Int {
        return n1 - n2
    }
    
    func dividir(n1: Int, n2: Int) -> Int {
        return n1 / n2
    }
    
    func dividirByZero(n1: Int, n2: Int) throws -> Int {
        if n2 == 0 {
            throw SomeError.ZeroError
        }
        return n1 / n2
        
    }
}
