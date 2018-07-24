//
//  PetsTableViewController.swift
//  Pets
//
//  Created by Lisa Sampson on 7/24/18.
//  Copyright © 2018 Lisa Sampson. All rights reserved.
//

import UIKit

class PetsTableViewController: UITableViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petController.pets.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PetCell", for: indexPath)
        
        let pet = petController.pets[indexPath.row]
        cell.textLabel?.text = pet.name
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowAddPet" {
            // Setup the detail view controller to add new classmate
            
            guard let detailVC = segue.destination as? PetsViewController else { return }
            
            detailVC.petController = petController
        }
        
    }
    
    let petController = PetController()
}
    

