//
//  QuestionData.swift
//  Personnality Quiz
//
//  Created by TIEGO Ouedraogo on 2/18/19.
//  Copyright © 2019 TIEGO Ouedraogo. All rights reserved.
//

import Foundation
import UIKit
enum AnimalType: Character {
    case dog = "🐶",
    cat = "🐱",
    rabbit = "🐰",
    turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
        case .cat:
            return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms."
        case .rabbit:
             return "You love everything that's soft. You are healthy and full of energy."
        case .turtle:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
        }
    }
}
struct Answer {
    var text: String
    var type: AnimalType
}

enum ResponseType {
    case single;
    case multiple;
    case ranged;
}

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

