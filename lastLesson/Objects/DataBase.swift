//
//  DataBase.swift
//  lastLesson
//
//  Created by Ruslan Sharshenov on 6/11/22.
//

import Foundation

class DataBase{
    private var humanArray: [Human] = []
    
    func addHumanToArray(model: Human){
        humanArray.append(model)
    }
    func getArray() -> [Human] {
        return humanArray
    }
    
    func dumpArray(){
        dump(self.humanArray)
    }
    
    func findHumanByName(name: String) -> Human{
        var model = Human()
        for i in humanArray{
            if i.getName() == name{
                model = i
            }
        }
        return model
    }
    func findHumanByLocation(location: String) -> Human{
        var model = Human()
        for i in humanArray{
            if i.getLocation() == location{
                model = i
            }
        }
        return model
    }
    func findHumanByAge(age: Int) -> Human{
        var model = Human()
        for i in humanArray{
            if i.getAge() == age{
                model = i
            }
        }
        return model
    }
}
