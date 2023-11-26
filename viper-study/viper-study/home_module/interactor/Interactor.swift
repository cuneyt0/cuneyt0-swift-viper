//
//  Interactor.swift
//  viper-study
//
//  Created by Cuneyt on 25.11.2023.
//

import Foundation
class Interactor:PresenterToInteractorProtocol{
    var presenter: InteractorToPresenterProtocol?
    
    func collect(number1: String, number2: String) {
        if let s1 = Int(number1), let s2 = Int(number2){
            let result = s1 + s2
            presenter?.sendDataToPresenter(result: String(result))
        }
    }
    
    func multiply(number1: String, number2: String) {
        if let s1 = Int(number1), let s2 = Int(number2){
            let result = s1 * s2
            presenter?.sendDataToPresenter(result: String(result))
        }
    }
    

    
}
