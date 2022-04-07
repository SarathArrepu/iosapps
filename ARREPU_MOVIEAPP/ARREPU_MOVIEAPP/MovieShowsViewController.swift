//
//  ViewController.swift
//  ARREPU_MOVIEAPP
//
//  Created by Arrepu,Sarath on 4/7/22.
//

import UIKit

class MovieShowsViewController: UIViewController {

    @IBOutlet weak var imageDisplay: UIImageView!
    
    @IBOutlet weak var MvName: UILabel!
    
    @IBOutlet weak var CostofMV: UILabel!
    
    
    @IBOutlet weak var Entermvname: UITextField!
    
    
    @IBOutlet weak var noofticket: UITextField!
    @IBOutlet weak var previousButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    let movies = [["Avatar", "12"], ["No time To Die", "10"],
    ["Shang Chi", "15"], ["Joker Chi", "20"]]
    
    var imageNumber = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(0)
        //previous button is disabled
        previousButton.isEnabled = false;
        // Do any additional setup after loading the view.
    }
    @IBAction func previousButtonClicked(_ sender: Any) {
        //Next button should be enabled
        nextButton.isEnabled = true
        
        //update UI
        imageNumber -= 1
        updateUI(imageNumber)
        
        //if the course position is at the 0th position, previous button should be disabled
        if(imageNumber == 0){
            previousButton.isEnabled = false
        }
        
        
    }
    
    
    @IBAction func nextButtonClicked(_ sender: Any) {
        //UI should be updated with the next course details
        imageNumber += 1
        updateUI(imageNumber)
        //previous button should be enabled
        previousButton.isEnabled = true
        //when we reach the end of the array that means all the images are shown, th next button should be disabled.
        if(imageNumber == movies.count-1){
            nextButton.isEnabled = false
        }
        
    }
    
    func updateUI(_ imageNumber:Int){
        imageDisplay.image = UIImage(named: movies[imageNumber][0])
        MvName.text = movies[imageNumber][0]
        CostofMV.text = movies[imageNumber][1]
        
    }


}

