//
//  Photo.swift
//  Polish
//
//  Created by Peter Mosher on 4/15/16.
//  Copyright © 2016 Peter Mosher. All rights reserved.
//

import Foundation

class Photo
{
    var name: String = ""
    var photographerProfileImageName: String = ""
    var caption: String = ""
    var thumbnailImageName: String = ""
    
    init(name: String, photographerProfileImageName: String, caption: String, thumbnailImageName: String)
    {
        self.name = name
        self.photographerProfileImageName = photographerProfileImageName
        self.caption = caption
        self.thumbnailImageName = thumbnailImageName
        
    }
    
    
    class func downloadAllPhotos() -> [Photo]
    {
        var photos = [Photo]()
    
        for i in 1...10 {
            let photo = Photo(name: "\(i)", photographerProfileImageName: "p\(i)", caption: "Lorem ipsum", thumbnailImageName: "t\(i)")
        }
        
        return photos
    }
    
    
    
    
}

