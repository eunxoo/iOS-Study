//
//  ViewController.swift
//  IBBasics
//
//  Created by 양은수 on 2021/08/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myButton.setTitleColor(.red, for: .normal)
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        print("The button was pressed")
    }
    

}

