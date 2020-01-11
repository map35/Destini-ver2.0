//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    let storyArray = [
        Story(title: "story 1", choice1: "choice 1 from story 1", choice2: "choice 2 from story 1"),
        Story(title: "story 2", choice1: "choice 1 from story 2", choice2: "choice 2 from story 2"),
        Story(title: "story 3", choice1: "choice 1 from story 3", choice2: "choice 2 from story 3"),
        Story(title: "story 4", choice1: "choice 1 from story 4", choice2: "choice 2 from story 4"),
        Story(title: "story 5", choice1: "choice 1 from story 5", choice2: "choice 2 from story 5"),
        Story(title: "story 6", choice1: "choice 1 from story 6", choice2: "choice 2 from story 6")
    ]
    
    var storyNumber = 0
    
    mutating func nextStory(userChoice: String) {
        if storyNumber < storyArray.count-1 {
            storyNumber += 1
        } else {
            storyNumber = 0
        }
    }
    
    func getStory() -> String {
        return storyArray[storyNumber].title
    }
    
    func getChoice() -> [String] {
        return [storyArray[storyNumber].choice1, storyArray[storyNumber].choice2]
    }
}

