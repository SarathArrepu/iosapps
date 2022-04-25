//
//  telugumovie.swift
//  HangerMovies
//
//  Created by Sai Lavanya Peddinti on 4/24/22.
//

import Foundation
import UIKit

struct telugumovie{
    let title:String
    let image:UIImage
}

let telugumovies : [telugumovie] = [
    telugumovie(title:"Boyhood",image:UIImage(named: "boyhood")!),
    telugumovie(title:"Mad Max: Fury Road",image:UIImage(named: "mad max")!),
    telugumovie(title:"Moonlight",image:UIImage(named: "moonlight")!),
    telugumovie(title:"Inception",image:UIImage(named: "inception")!),
    telugumovie(title:"Slumdog Millionaire",image:UIImage(named: "slumdog millionaire")!),
    telugumovie(title:"The Dark Knight",image:UIImage(named: "the dark knight")!),
    telugumovie(title:"The Social Network",image:UIImage(named: "the social network")!)
]
