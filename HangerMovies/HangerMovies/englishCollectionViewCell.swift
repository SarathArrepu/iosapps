//
//  englishCollectionViewCell.swift
//  HangerMovies
//
//  Created by Sai Lavanya Peddinti on 4/24/22.
//

import UIKit

class englishCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageviewOutlet2: UIImageView!
    func assignMovie(with englishmovies: englishmovie){
        imageviewOutlet2.image = englishmovies.image

}
}
