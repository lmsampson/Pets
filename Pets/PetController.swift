//
//  PetController.swift
//  Pets
//
//  Created by Lisa Sampson on 7/24/18.
//  Copyright © 2018 Lisa Sampson. All rights reserved.
//

import Foundation

class PetController {
    func createPet(withName name: String) -> Pet {
        let pet = Pet(name: name)
        pets.append(pet)
        return pet
    }
    
private(set) var pets: [Pet] = []
}


