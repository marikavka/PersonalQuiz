//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Мария Купчинская on 16.05.2023.
//

import UIKit

final class ResultViewController: UIViewController {

    
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var definitionLabel: UILabel!
    
    var answersChosen: [Answer] = []
    var animals: [Animal] = []

    var amountOfAnswers: [Animal: Int] = [
        .cat:0,
        .dog:0,
        .rabbit:0,
        .turtle:0
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        for answer in answersChosen {
            animals.append(answer.animal)
        }
        
        for animal in animals {
            amountOfAnswers[animal]! += 1
        }
        
        var winner = 0
        var winnerAnimal: Animal = .turtle
        for (animal, count) in amountOfAnswers {
            if count > winner {
                winner = count
                winnerAnimal = animal
            }
        }
        
        answerLabel.text = "Вы - \(winnerAnimal.rawValue)"
        definitionLabel.text = "\(winnerAnimal.definition)"
    }
    
    @IBAction func doneButtinPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    deinit {
        print("ResultViewController is deallocated")
    }
}
