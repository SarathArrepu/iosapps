//
//  ViewController.swift
//  DiscountApp
//
//  Created by Arrepu,Sarath on 2/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Amount: UITextField!
    @IBOutlet weak var Discount: UITextField!
    @IBOutlet weak var Display: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Submit(_ sender: UIButton) {
        var am = Double(Amount.text!)!
        var dis = Double(Discount.text!)!
        var disco = Double(am*(dis/100))
        Display.text! = "The amount is \(am-disco)"
    }
    
}

