//
//  AdventureLogic.swift
//  MyAdventure
//
//  Created by Matt Erdahl on 11/17/24.
//

import Foundation
import UIKit

struct AdventureLogic {
    var bookmark: Int = 0
    var backColor: UIColor = UIColor.cyan
    
    //Array with story elements and button choices. There must be a more efficient way to store and retrieve these but the branching paths is throwing me off.
    let storyArray = [
        Story("You found the map of \"The Treasure on Pirate Island!\"", "Hire a private boat captain.", "Hire a private flight."),
        Story("You hire a private boat captain. On the journey, you are caught in a vicious storm.", "Man the mizzenmast!", "Tie yourself to something."),
        Story("You hire a private flight. The pilot gets you to Pirate Island but demands triple the agreed amount to bring you back.", "Tell her you aren't paying that, you can talk about it after you get the treasure.", "Tell her that's ok, secretly you know you'll make way more from the treasure."),
        Story("You don't know what a mizzenmast is. You are too distracted to see the rope that wraps around your leg and sweeps you overboard into the briny deep.", "Start Over", "Start Over"),
        Story("Tied to the railing, you are just able to not get swept overboard. Through the deluge, you help spot the island and make it to shore. The treasure is yours!", "Start Over", "Start Over"),
        Story("Determined, you find and dig up the treasure without the pilot. You've found it! However, when you get back to the beach the pilot has flown off. You are stranded... the treasure isn't good company. Weeks later the pilot comes back and takes the treasure from your remains.", "Start Over", "Start Over"),
        Story("The pilot is pleased with her ingenuity, to the point of being smug. You pretend to sulk but when you steal a glance at the treasure you know that you'll be rich beyond your wildest dreams regardless. By the time you're spending your money on the mainland, you've forgotten the pilot entirely.", "Start Over", "Start Over")
    ]
    
    //Redo display with next story section based on the previous choice. Here is where the branching paths should be narrowed down if I can figure out how.
    mutating func loadNext(_ curS: String, _ chSub: String) {
        if curS == storyArray[0].story {
            if chSub == storyArray[0].choiceOne {
                bookmark = 1
            }
            else {
                bookmark = 2
            }
        }
        else if curS == storyArray[1].story {
            if chSub == storyArray[1].choiceOne {
                bookmark = 3
                backColor = UIColor.red
            }
            else {
                bookmark = 4
                backColor = UIColor.green
            }
        }
        else if curS == storyArray[2].story {
            if chSub == storyArray[2].choiceOne {
                bookmark = 5
                backColor = UIColor.red
            }
            else {
                bookmark = 6
                backColor = UIColor.green
            }
        }
        else {
            bookmark = 0
            backColor = UIColor.cyan
        }
    }
    
    //functions for passing elements to view controller
    func getStory() -> String {
        return storyArray[bookmark].story
    }
    
    func getChoiceOne() -> String {
        return storyArray[bookmark].choiceOne
    }
    
    func getChoiceTwo() -> String {
        return storyArray[bookmark].choiceTwo
    }
    
    func getColor() -> UIColor {
        return backColor
    }
}
