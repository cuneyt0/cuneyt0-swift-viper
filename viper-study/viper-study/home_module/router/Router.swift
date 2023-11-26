//
//  Router.swift
//  viper-study
//
//  Created by Cuneyt on 25.11.2023.
//

import Foundation
class Router:PresenterToRouter{
    static func createModule(ref: ViewController) {
        let presenter = Presenter()
        
        //View
        
        ref.presenterObject = presenter
        
        //Presenter
        ref.presenterObject?.view = ref
        ref.presenterObject?.inteactor = Interactor()
        
        //Interactor
        ref.presenterObject?.inteactor?.presenter = presenter
    }
    
    
}
