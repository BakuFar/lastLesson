//
//  Worker.swift
//  lastLesson
//
//  Created by Ruslan Sharshenov on 6/11/22.
//

import Foundation

class Worker: Human{
    var place: String
    var post: String
    
    init(place: String, post: String, name: String, age: Int, location: String) {
        self.place = place
        self.post = post
        super .init(name: name, age: age, location: location)
    }
    func getPlace()->String{
        return self.place
    }
    func getPost()->String{
        return self.post
    }
}
