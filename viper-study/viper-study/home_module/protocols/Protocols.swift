//
//  Protocols.swift
//  viper-study
//
//  Created by Cuneyt on 25.11.2023.
//

import Foundation

//Ana Protocoller
protocol ViewToPresenterProtocol{
    var view:PresenterToViewProtocol?{get set}
    var inteactor:PresenterToInteractorProtocol?{get set}
   
    func collectDo(number1:String,number2:String)
    func multiplyDo(number1:String,number2:String)
    
}
protocol PresenterToInteractorProtocol{
    var presenter:InteractorToPresenterProtocol?{get set}
    func collect(number1:String,number2:String)
    func multiply(number1:String,number2:String)
    
}
//Taşıyıcı Protocoller

protocol PresenterToViewProtocol{
    func sendDataToView(result:String)
}

protocol InteractorToPresenterProtocol{
  func sendDataToPresenter(result:String)
}
protocol PresenterToRouter {
    static func createModule(ref:ViewController)
}
