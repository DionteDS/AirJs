//
//  ViewController.swift
//  AirJs
//
//  Created by Dionte Silmon on 8/23/19.
//  Copyright © 2019 Dionte Silmon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var jordanTable: UITableView!
    
    
    let shoeModel = AirJordanModel().ajShoes // array to hold the shoes ajShoes objects
    var row = 0 // To hold the indexPathForSelectRow.row
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        jordanTable.delegate = self
        jordanTable.dataSource = self
        
        // Register the AirJCell .xib file
        jordanTable.register(UINib(nibName: "AirJCell", bundle: nil), forCellReuseIdentifier: "ShoeCell")
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoeModel.count // number of rows
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let theShoe = shoeModel[indexPath.row] // hold the index path of the shoes
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoeCell", for: indexPath) as! AirJCell
        
        // display the info
        cell.shoeText.text = theShoe.shoeName
        cell.shoeImage.image = UIImage(named: theShoe.shoeImageName)
        cell.shoeInfoText.text = theShoe.shoeYear
        
        
        return cell
        
    }
    
    // when a row is selected store the selected indexPath row to the variable row
    // Then go to SelectedViewController segue
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let rowIndex = tableView.indexPathForSelectedRow?.row {
            row = rowIndex
        }
        self.performSegue(withIdentifier: "infoTableView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Create segue object
        let controller = segue.destination as! SelectedViewController
        
        // Update the SelectedViewController labels and UIImage
        controller.theShoes = shoeModel[row]

        
    }

    

}

