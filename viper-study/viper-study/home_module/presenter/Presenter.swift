//
//  Presenter.swift
//  viper-study
//
//  Created by Cuneyt on 25.11.2023.
//

import Foundation

class Presenter : ViewToPresenterProtocol{
    var view: PresenterToViewProtocol?
    
    var inteactor: PresenterToInteractorProtocol?
    
    func collectDo(number1: String, number2: String) {
        inteactor?.collect(number1: number1, number2: number2)
    }
    
    func multiplyDo(number1: String, number2: String) {
        inteactor?.multiply(number1: number1, number2: number2)
    }
    
    
}

extension Presenter : InteractorToPresenterProtocol {
    func sendDataToPresenter(result: String) {
        view?.sendDataToView(result: result)
    }
    
    
}
