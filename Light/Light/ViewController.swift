//
//  ViewController.swift
//  Light
//
//  Created by 양은수 on 2021/08/03.
//

import UIKit

class ViewController: UIViewController {

    //@IBOutlet weak var lightButton: UIButton!
    
    var lightOn = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
    func updateUI()  {
//        if lightOn {
//            self.view.backgroundColor = .white
//            //lightButton.setTitle("Off", for: .normal)
//        } else {
//            self.view.backgroundColor = .black
//            //lightButton.setTitle("On", for: .normal)
//        }
        view.backgroundColor = lightOn ? .white : .black
    }
}

