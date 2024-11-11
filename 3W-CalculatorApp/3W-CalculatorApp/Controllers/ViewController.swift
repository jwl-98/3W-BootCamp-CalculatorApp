//
//  ViewController.swift
//  3W-CalculatorApp
//
//  Created by 진욱의 Macintosh on 11/11/24.
//

import UIKit

class ViewController: UIViewController {

    let calculatorView = CalculatorView()
    
    override func loadView() {
        print(#function)
        view = calculatorView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }


}

