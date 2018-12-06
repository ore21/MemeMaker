//
//  ViewController.swift
//  MemeMaker
//
//  Created by Brandon Gonzalez on 12/3/18.
//  Copyright © 2018 Brandon Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCaptiopnLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionSegmentControl: UISegmentedControl!
    
    var topChoices = [CaptionChoice]()
    var bottomChoices = [CaptionChoice]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let coolChoice = CaptionChoice(emoji:"🕶",
                                       caption: "You know what's cool?")
        let madChoice = CaptionChoice(emoji: "💥", caption: "You what makes me mad?")
        let loveChoice = CaptionChoice(emoji: "💕", caption: "You know what i love?")
        
        topChoices = [coolChoice, madChoice, loveChoice]
        topCaptionSegmentedControl.removeAllSegments()
        for choice in topChoices{
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        let catChoice = CaptionChoice(emoji: "🐱", caption: "Cats wearing hats")
        let dogChoice = CaptionChoice(emoji: "🐶", caption: "Dogs carrying logs")
        let monkeyChoice = CaptionChoice(emoji: "🐵", caption: "Monkeys being funny")
        
        bottomChoices = [catChoice, dogChoice, monkeyChoice]
        bottomCaptionSegmentControl.removeAllSegments()
        for choice in bottomChoices{
            bottomCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        
        }
        bottomCaptionSegmentControl.selectedSegmentIndex = 0
        updateLabels()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateLabels(){
        let topIndex = topCaptionSegmentedControl.selectedSegmentIndex
        let bottomIndex = bottomCaptionSegmentControl.selectedSegmentIndex
        
        let topChoice = topChoices[topIndex]
        let bottomCHoice = bottomChoices[bottomIndex]
        
        topCaptiopnLabel.text = topChoice.caption
        bottomCaptionLabel.text = bottomCHoice.caption
    }

    @IBAction func choiceSelected(_ sender: Any) {
        updateLabels()
    }
}

