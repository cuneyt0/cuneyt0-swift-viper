//
//  ViewController.swift
//  protocol_study
//
//  Created by Cuneyt on 23.11.2023.
//

import UIKit

class ViewController: UIViewController {

   
    @IBAction func gotoDetail(_ sender: Any) {
        performSegue(withIdentifier: "toDetail", sender: nil)
    }
    
    @IBOutlet weak var data: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail"{
            let goToViewController = segue.destination as! DetailViewController
            
            goToViewController.delagate = self
        }
    }

}

extension ViewController:DetailViewControllertoViewControllerProtocol{
    func sendData(message: String?) {
        data.text = message;
    }
    
    
}
