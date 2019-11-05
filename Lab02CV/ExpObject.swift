//
//  ExpObject.swift
//  Lab02CV
//
//  Created by Johan Kantola on 2019-11-04.
//  Copyright © 2019 Johan Kantola. All rights reserved.
//

import Foundation



class ExpObject {
    
    var imageName: String
    var name: String
    var fromTo: String
    var description: String
    
    
    init(imageName: String = "default", name: String, fromTo:String, description: String){
        self.imageName = imageName
        self.name = name
        self.fromTo = fromTo
        self.description = description
    }
    func getImageName()-> String {
        return self.imageName
    }
}
