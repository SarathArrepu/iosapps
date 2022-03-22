//
//  ViewController.swift
//  DiscountApp
//
//  Created by Arrepu,Sarath on 3/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AmountOutlet: UITextField!
    @IBOutlet weak var Discountrateoutlet: UITextField!
    var priceafterDiscount = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalcDicount(_ sender: UIButton) {
        var Amount = Double(AmountOutlet.text!)
        var discountRate = Double(Discountrateoutlet.text!)
        priceafterDiscount = Amount! - (Amount!*discountRate!/100)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var transition = segue.identifier
        if transition == "resultsegue"{
            var destination = segue.destination as!
            ResultViewControllor
            
            destination.Amount = AmountOutlet.text!
            destination.discrate = Discountrateoutlet.text!
            destination.priceafterdiscount = String(priceafterDiscount)
            
        }
    }
   
    
}

