import Foundation

var dataBase = DataBase()

dataBase.addHumanToArray(model: Human(name: "Adam", age: 16, location: "China"))
dataBase.addHumanToArray(model: Human(name: "Jack", age: 20, location: "USA"))
dataBase.addHumanToArray(model: Human(name: "Aibek", age: 18, location: "Kyrgyzstan"))
dataBase.addHumanToArray(model: Teacher(school: "School #51", object: "Math", name: "Jarkyn", age: 58, location: "Tunguch"))
dataBase.addHumanToArray(model: Teacher(school: "School #66", object: "Kyrgyz lang", name: "Taalay", age: 63, location: "Kara Jygach"))
dataBase.addHumanToArray(model: Worker(place: "Car service", post: "Manager", name: "Rahat", age: 34, location: "Uchkun"))

var found = dataBase.findHumanByName(name: "Aibek")
var found2 = dataBase.findHumanByAge(age: 20)

if found.getName() == ""{
    print("no model found")
}else{
    print("\(found.getName()) - \(found.getAge()). is in array")
}

if found2.getName() == ""{
    print("no model found")
}else{
    print("\(found2.getName()) - \(found2.getAge()). is in array")
}

func printTeacherCount() {
    var countTeacher = 0
    for i in dataBase.getArray() {
        if i is Teacher {
            countTeacher += 1
        }
    }
    print("Count of teachers - \(countTeacher)")
}
func printWorkerCount() {
    var countWorker = 0
    for i in dataBase.getArray() {
        if i is Worker {
            countWorker += 1
        }
    }
    print("Count of workers - \(countWorker)")
}
print("Count of humans - \(dataBase.getArray().count)")
printTeacherCount()
printWorkerCount()
