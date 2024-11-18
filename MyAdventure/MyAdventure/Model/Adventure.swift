//
//  Adventure.swift
//  MyAdventure
//
//  Created by Matt Erdahl on 11/17/24.
//

import Foundation

struct Story {
    init(_ sto:String, _ cOne:String, _ cTwo:String) {
        story = sto
        choiceOne = cOne
        choiceTwo = cTwo
    }
    
    var story: String
    var choiceOne: String
    var choiceTwo: String
}
