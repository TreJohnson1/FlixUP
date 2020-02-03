//
//  MovieDetailViewController.swift
//  FlixUP
//
//  Created by Tre Johnson on 1/27/20.
//  Copyright © 2020 Tre Johnson. All rights reserved.
//

import UIKit
import AlamofireImage
class MovieDetailViewController: UIViewController {

    
    @IBOutlet weak var backdrop: UIImageView!
    @IBOutlet weak var titleView: UILabel!
   
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var posterview: UIImageView!
    var movie: [String: Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleView.text = movie["title"] as? String
        titleView.sizeToFit()
        synopsisLabel.text =  movie["overview"] as? String
        synopsisLabel.sizeToFit()

        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        posterview.af_setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
            backdrop.af_setImage(withURL: backdropUrl!)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
