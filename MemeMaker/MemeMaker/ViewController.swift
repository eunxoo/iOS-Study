//
//  ViewController.swift
//  MemeMaker
//
//  Created by 양은수 on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {
    
    var topChoices = [CaptionOption]()
    var bottomChoices = [CaptionOption]()

    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCationLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let coolCaption = CaptionOption(emoji: "🕶", caption: "You know what's cool?")
        let cozyCaption = CaptionOption(emoji: "🧢", caption: "You know what's cozy?")
        let prettyCaption = CaptionOption(emoji: "🎀", caption: "You know what's pretty?")
        
        topChoices = [coolCaption, cozyCaption, prettyCaption]
        
        topCaptionSegmentedControl.removeAllSegments()
        
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        
        let catCaption = CaptionOption(emoji: "🐱", caption: "A cool cat")
        let rabCaption = CaptionOption(emoji: "🐰", caption: "A pretty rabbit")
        let bearCaption = CaptionOption(emoji: "🐻", caption: "A cozy bear")
        
        bottomChoices = [catCaption, rabCaption, bearCaption]
        
        bottomCaptionSegmentedControl.removeAllSegments()
        
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        
        updateCaption()
    }


    @IBAction func segmentControlTouched(_ sender: Any) {
        updateCaption()
    }
    
    func updateCaption() {
        let topSelectedIndex = topCaptionSegmentedControl.selectedSegmentIndex
        let bottomSelectedIndex = bottomCaptionSegmentedControl.selectedSegmentIndex
        
        let topChoice = topChoices[topSelectedIndex]
        let bottomChoice = bottomChoices[bottomSelectedIndex]
        
        topCationLabel.text = topChoice.caption
        bottomCaptionLabel.text = bottomChoice.caption
    }
}

