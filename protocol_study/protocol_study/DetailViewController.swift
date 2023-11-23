//
//  DetailViewController.swift
//  protocol_study
//
//  Created by Cuneyt on 23.11.2023.
//

import UIKit

class DetailViewController: UIViewController {

 
  
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func sendButton(_ sender: Any) {
        if let input = textField.text {
            delagate?.sendData(message: input)
        }
        navigationController?.popViewController(animated: true)
    }
    var delagate: DetailViewControllertoViewControllerProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

   
}
