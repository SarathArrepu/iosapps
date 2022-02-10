//
//  ViewController.swift
//  CourseApp
//
//  Created by Arrepu,Sarath on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var DisplayImag: UIImageView!
    
    @IBOutlet weak var Crsnum: UILabel!
    
    @IBOutlet weak var CrsTitle: UILabel!
    
    @IBOutlet weak var CrsSem: UILabel!
    
    @IBOutlet weak var Previousbutton: UIButton!
    
    @IBOutlet weak var Nextbutton: UIButton!
    
    let courses = [["img01", "44555", "Network Security", "Fall 2022"],
                   ["img02", "44556", "IOS", "Spring 2022"],
                   ["img03", "44557", "Data Streaming", "Summer 2022"]]
    
    var imagenumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // load the first course details(image, coursenum, title and sem)
        //DisplayImag.image = UIImage(named: courses[0][0])
        //Crsnum.text! = courses[0][1]
        //CrsTitle.text! = courses[0][2]
        //CrsSem.text! = courses[0][3]
        updateUi(imagenumber)
        // previous button is disabled
        Previousbutton.isEnabled = false
    }

    
    @IBAction func Previousbut_click(_ sender: UIButton) {
        
        Nextbutton.isEnabled = true
        imagenumber-=1
        updateUi(imagenumber)
        if(imagenumber == 0){
            Previousbutton.isEnabled = false
        }
        
        
    }
    @IBAction func Nextbut_click(_ sender: UIButton) {
       
        imagenumber+=1
        updateUi(imagenumber)
        Previousbutton.isEnabled = true
        
        if(imagenumber == courses.count-1){
            Nextbutton.isEnabled = false
        }
        
    }
    func updateUi(_ imagenum: Int){
        DisplayImag.image = UIImage(named: courses[imagenumber][0])
        Crsnum.text! = courses[imagenumber][1]
        CrsTitle.text! = courses[imagenumber][2]
        CrsSem.text! = courses[imagenumber][3]
        // previous button is disabled
        //Previousbutton.isEnabled = true
    }
    
}

