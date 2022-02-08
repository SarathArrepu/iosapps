//
//  ViewController.swift
//  sampleapp
//
//  Created by Arrepu,Sarath on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Inputval: UITextField!
    @IBOutlet weak var outval: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Submit(_ sender: UIButton) {
        let inp = Int(Inputval.text!)
        if inp! % 2 == 0
        {
            outval.text!=("the \(inp!) is even number")
        }
        else{
            outval.text!=("the \(inp!) is odd number")
        }
    }
    
}

