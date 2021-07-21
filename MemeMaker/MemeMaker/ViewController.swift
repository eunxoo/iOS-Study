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

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let coolCaption = CaptionOption(emoji: "🕶", caption: "You know what's cool?", image:nil)
        let cozyCaption = CaptionOption(emoji: "🧢", caption: "You know what's cozy?",image:nil)
        let prettyCaption = CaptionOption(emoji: "🎀", caption: "You know what's pretty?",image:nil)
        
        topChoices = [coolCaption, cozyCaption, prettyCaption]
        
        topCaptionSegmentedControl.removeAllSegments()
        
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        
        let catCaption = CaptionOption(emoji: "🐱", caption: "A cool cat", image: "icat.jpeg")
        let rabCaption = CaptionOption(emoji: "🐰", caption: "A pretty rabbit", image: "irab.jpeg")
        let bearCaption = CaptionOption(emoji: "🐻", caption: "A cozy bear", image: "ibear.jpeg")
        
        bottomChoices = [catCaption, rabCaption, bearCaption]
        
        bottomCaptionSegmentedControl.removeAllSegments()
        
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        
        updateCaption()
        
    }

    func updateCaption() {
        let topSelectedIndex = topCaptionSegmentedControl.selectedSegmentIndex
        let bottomSelectedIndex = bottomCaptionSegmentedControl.selectedSegmentIndex
        
        let topChoice = topChoices[topSelectedIndex]
        let bottomChoice = bottomChoices[bottomSelectedIndex]
        

        topCationLabel.text = topChoice.caption
        bottomCaptionLabel.text = bottomChoice.caption
        
        if let selectedImg = bottomChoices[bottomCaptionSegmentedControl.selectedSegmentIndex].image {
           imageView.image = UIImage(named:selectedImg)
        }

    }
    
    @IBAction func segmentControlTouched(_ sender: Any) {
        updateCaption()
       
    }
    
}

