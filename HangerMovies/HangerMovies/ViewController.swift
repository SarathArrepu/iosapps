//
//  ViewController.swift
//  HangerMovies
//
//  Created by Sai Lavanya Peddinti on 4/24/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == englishCollection){
            return englishmovies.count
        }
        return telugumovies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if (collectionView == englishCollection){
        let cell = teluguCollection.dequeueReusableCell(withReuseIdentifier: "telugumovie", for: indexPath) as! teluguCollectionViewCell
            cell.assignMovie(with: telugumovies[indexPath.row])
            return cell
        }
        let cell = englishCollection.dequeueReusableCell(withReuseIdentifier: "englishmovie", for: indexPath) as! englishCollectionViewCell
            cell.assignMovie(with: englishmovies[indexPath.row])
            return cell
    }
   
    
    var timer: Timer?
    var timer1: Timer?
    var currentcellIndex = 0
    @IBOutlet weak var englishCollection: UICollectionView!
    @IBOutlet weak var teluguCollection: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        teluguCollection.delegate = self
        teluguCollection.dataSource = self
        
        
        englishCollection.delegate = self
        englishCollection.dataSource = self
        
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(slideToNext), userInfo: nil, repeats: true)
        timer1 = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(slideToNext1), userInfo: nil, repeats: true)
    }
    @objc func slideToNext(){
        if currentcellIndex < telugumovies.count-1{
            currentcellIndex = currentcellIndex + 1
        }
        else{
            currentcellIndex = 0
        }
        teluguCollection.scrollToItem(at: IndexPath(item: currentcellIndex, section: 0), at: .right, animated: true)
    }
    @objc func slideToNext1(){
        if currentcellIndex < englishmovies.count-1{
            currentcellIndex = currentcellIndex + 1
        }
        else{
            currentcellIndex = 0
        }
        englishCollection.scrollToItem(at: IndexPath(item: currentcellIndex, section: 0), at: .right, animated: true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "movieinfosegue"{
            var destination = segue.destination as! infoViewController
            
        }
    }

}

