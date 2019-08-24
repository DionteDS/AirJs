//
//  SelectedViewController.swift
//  AirJs
//
//  Created by Dionte Silmon on 8/23/19.
//  Copyright © 2019 Dionte Silmon. All rights reserved.
//

import UIKit

class SelectedViewController: UIViewController {
    
    // Hold the Shoes struct objects
    var theShoes : Shoes!
    
    @IBOutlet weak var shoeText: UILabel!
    @IBOutlet weak var shoeImage: UIImageView!
    @IBOutlet weak var shoeInfoLabel: UILabel!
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        shoeText.text = theShoes.shoeName
        shoeImage.image = UIImage(named: theShoes.shoeImageName)
        shoeInfoLabel.text = theShoes.shoeDescription
    }

}
