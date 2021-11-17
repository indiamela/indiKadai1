//
//  ViewController.swift
//  indiKadai1
//
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!
    @IBOutlet private weak var thirdTextField: UITextField!
    @IBOutlet private weak var fourthTextField: UITextField!
    @IBOutlet private weak var fifthTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "0"
    }

    @IBAction private func calcAction(_ sender: Any) {
        resultLabel.text = "\(totalCalculate())"
    }
    
    private func totalCalculate() -> Int {
        let inputArray: [UITextField] = [
            firstTextField,
            secondTextField,
            thirdTextField,
            fourthTextField,
            fifthTextField
        ]
        return inputArray
            .map({Int($0.text ?? "0") ?? 0})
            .reduce(0,+)
    }
}
