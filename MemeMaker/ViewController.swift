//
//  ViewController.swift
//  MemeMaker
//
//  Created by Mark Meretzky on 11/6/18.
//  Copyright © 2018 New York University School of Professional Studies. All rights reserved.
//

import UIKit;

class ViewController: UIViewController {
    
    var topChoices: [CaptionOption] = [
        CaptionOption(emoji: "🕶", caption: "You know what's cool?"),
        CaptionOption(emoji: "💥", caption: "You know what makes me mad?"),
        CaptionOption(emoji: "💕", caption: "You know whatI love?")
    ];
    
    var bottomChoices: [CaptionOption] = [
        CaptionOption(emoji: "🐱", caption: "Cats wearing hats"),
        CaptionOption(emoji: "🐕", caption: "Dogs carrying logs"),
        CaptionOption(emoji: "🐒", caption: "Monkeys being funky")
    ];

    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        topCaptionSegmentedControl.removeAllSegments();
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false);
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0;
        
        bottomCaptionSegmentedControl.removeAllSegments();
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false);
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0;
        
        setLabels();
    }
    
    @IBAction func segmentedControlValueChanged(_ sender: UISegmentedControl) {
        setLabels();
    }
    
    func setLabels() {
        topCaptionLabel.text = topChoices[topCaptionSegmentedControl.selectedSegmentIndex].caption;
        bottomCaptionLabel.text = bottomChoices[bottomCaptionSegmentedControl.selectedSegmentIndex].caption;
    }
    
}
