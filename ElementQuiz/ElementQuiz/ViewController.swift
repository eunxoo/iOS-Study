//
//  ViewController.swift
//  ElementQuiz
//
//  Created by 양은수 on 2021/07/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLable: UILabel!
    
    
    let elementList = ["Carbon","Gold","Chlorine","Sodium"]
    var currentElementIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateElement()
    }

    func updateElement() {
        answerLable.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }
    
    
    @IBAction func showAnswer(_ sender: Any) {
        answerLable.text = elementList[currentElementIndex]
    }
    @IBAction func gotoNextElement(_ sender: Any) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        updateElement()
    }
    
}

