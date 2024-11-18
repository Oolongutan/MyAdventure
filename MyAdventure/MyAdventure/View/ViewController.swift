//
//  ViewController.swift
//  MyAdventure
//
//  Created by Matt Erdahl on 11/16/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var story: UILabel!
    
    @IBOutlet weak var choiceOne: UIButton!
    
    @IBOutlet weak var choiceTwo: UIButton!
    
    var adventureLogic = AdventureLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    //Read choice and load next story section. I should've called the function 'choiceSubmitted' but I didn't want to mess anything up just by changing the name.
    @IBAction func answerSubmitted(_ sender: UIButton) {
        let currentStory = story.text
        let choiceSubmitted = sender.titleLabel!.text!
        
        adventureLogic.loadNext(currentStory!, choiceSubmitted)
        updateUI()
    }
    
    func updateUI() {
        story.text = adventureLogic.getStory()
        choiceOne.setTitle(adventureLogic.getChoiceOne(), for: .normal)
        choiceTwo.setTitle(adventureLogic.getChoiceTwo(), for: .normal)
        background.backgroundColor = adventureLogic.getColor()
    }
}

