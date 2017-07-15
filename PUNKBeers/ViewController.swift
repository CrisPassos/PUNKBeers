//
//  ViewController.swift
//  PUNKBeers
//
//  Created by Cristiana  Passos on 15/07/17.
//  Copyright © 2017 Cristiana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblTagline: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblAbc: UILabel!
    @IBOutlet weak var lblIbu: UILabel!
    @IBOutlet weak var ivImage: UIImageView!
    
    var beer: Beer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if beer != nil {
            lblName.text = beer.name
            lblTagline.text = beer.tagline
            lblDescription.text = beer.description
            lblAbc.text = "\(beer.abv)"
            lblIbu.text = "\(beer.ibu)"
            //ivImage.image = beer.image as? UIImage
            title = beer.name
        }
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

