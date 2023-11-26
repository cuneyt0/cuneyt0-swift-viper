//
//  ViewController.swift
//  viper-study
//
//  Created by Cuneyt on 23.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var result: UILabel!
    
    var presenterObject : ViewToPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        result.text = "0"
        
        Router.createModule(ref: self)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func multiply(_ sender: Any) {
        if let numberOne = firstNumber.text , let numberTwo = secondNumber.text{
            presenterObject?.multiplyDo(number1: numberOne, number2: numberTwo)
        }
    }
    
    @IBAction func collect(_ sender: Any) {
        if let numberOne = firstNumber.text , let numberTwo = secondNumber.text{
            presenterObject?.collectDo(number1: numberOne, number2: numberTwo)
        }
    }
    @IBAction func allitemclear(_ sender: Any) {
        firstNumber.text = ""
        secondNumber.text = ""
        result.text = ""
        
    }
    
}

extension ViewController : PresenterToViewProtocol {
    func sendDataToView(result: String) {
        self.result.text = result
    }
    
    
}
