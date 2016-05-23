//
//  Polish.swift
//  Polish
//
//  Created by Peter Mosher on 4/15/16.
//  Copyright © 2016 Peter Mosher. All rights reserved.
//

import Foundation
import UIKit

class Polish{

    // MARK: PROPERTIES
    
    var name: String = ""
    var description: String = ""
    var photo: UIImage?
    var color: UIColor?
    var brand: String = ""
    var quantity: Int = 0

    
    // MARK: INITIALIZER
    init?(name:String, description: String) {
        
        self.name = name
        self.description = description
        //self.photo = photo
        
        //super.init()
        
        
        if name.isEmpty {
            return nil
        }
    }

    
    
    init?(name:String, description: String, photo: UIImage?) {
        
        self.name = name
        self.description = description
        self.photo = photo
        
        //super.init()
    
    
        if name.isEmpty {
            return nil
        }
    }
    
    
    struct PropertyKey {
        static let nameKey = "name"
        static let descriptKey = "description"
        static let photoKey = "photo"
        static let colorKey = "color"
        static let brandKey = "brand"
        static let quantityKey = "quantity"
    }
    

}
