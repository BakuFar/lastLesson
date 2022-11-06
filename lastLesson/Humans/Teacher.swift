//
//  Teacher.swift
//  lastLesson
//
//  Created by Ruslan Sharshenov on 6/11/22.
//

import Foundation

class Teacher: Human{
    var school: String
    var object: String
    
    init(school: String, object: String, name: String, age: Int, location: String) {
        self.school = school
        self.object = object
        super .init(name: name, age: age, location: location)
    }
    func getSchool()->String{
        return self.school
    }
    func getObject()->String{
        return self.object
    }
}
