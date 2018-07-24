//
//  PetsViewController.swift
//  Pets
//
//  Created by Lisa Sampson on 7/24/18.
//  Copyright © 2018 Lisa Sampson. All rights reserved.
//

import UIKit

class PetsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    @IBAction func save(_ sender: Any) {
        guard let name = petTextField.text else { return }
        let _ = petController?.createPet(withName: name)
    }
    
    private func updateViews() {
        guard let pet = pet else {
            title = "New Pet"
            return
        }
        
        title = pet.name
        
        petTextField.text = pet.name
    }
    
    var pet: Pet?
    var petController: PetController?
    
    @IBOutlet weak var petTextField: UITextField!
    
}
