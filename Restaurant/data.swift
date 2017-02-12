//
//  data.swift
//  Restaurant
//
//  Created by paw daw on 02/09/16.
//  Copyright © 2016 paw daw. All rights reserved.
//

import Foundation

class Data{
    
    class entry {
        let filename : String
        let heading : String
        init(fname : String, heading : String){
            self.heading = heading
            self.filename = fname
        }
    }
    
    let places = [
        
        entry(fname: "background_1.jpg", heading: "Heading_1"),
        entry(fname: "background_2.jpg", heading: "Heading_2"),
        entry(fname: "background_3.jpg", heading: "Heading_3")
    ]
}
