//
//  ViewController.swift
//  AnimalSounds
//
//  Created by 양은수 on 2021/07/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animalSoundLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func catButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Xiu!"
        let sound = SimpleSound(named: "meow")
        sound.play()
    }
    @IBAction func rabButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Myeon!"
        let sound = SimpleSound(named: "woof")
        sound.play()
    }

    @IBAction func dogButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Kyoong!"
    }
    @IBAction func pengButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Dks!"
    }
    @IBAction func bearButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Nini!"
    }
    @IBAction func chickButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Hoonie!"
    }
}

