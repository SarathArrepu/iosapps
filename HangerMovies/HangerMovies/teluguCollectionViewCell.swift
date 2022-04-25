//
//  teluguCollectionViewCell.swift
//  HangerMovies
//
//  Created by Sai Lavanya Peddinti on 4/24/22.
//

import UIKit

class teluguCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageviewoutlet: UIImageView!
    func assignMovie(with telugumovies: telugumovie){
        imageviewoutlet.image = telugumovies.image

}
}
