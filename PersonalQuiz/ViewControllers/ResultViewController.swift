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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
    }
    
    @IBAction func doneButtinPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    deinit {
        print("ResultViewController is deallocated")
    }
}
