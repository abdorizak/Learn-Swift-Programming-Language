import UIKit

// Base Example for Structures and Classes
struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

print("The width of someResolution is \(someResolution.width)")
// Prints "The width of someResolution is 0


// Another Expample for Structures and Classes

struct StudentClass {
    var departmant: String = ""
    var classname: String = ""
}

class Student {
    let firstName: String
    let lastName: String
    let dateOfBirth: String
    var stdClass = StudentClass()
    let age: Int
    
    init(firstName: String, lastName: String, dateOfBirth: String, age: Int, stdClass: StudentClass) {
        self.firstName = firstName
        self.lastName = lastName
        self.dateOfBirth = dateOfBirth
        self.age = age
        self.stdClass = stdClass
    }
    
    func checkStudentAge() {
        if age >= 18 {
            print("this Student \(firstName + lastName) is Age")
        } else {
            print("this Student \(firstName + lastName) is young")
        }
    }
    
}

let students1 = Student(firstName: "Abdorizak", lastName: "Abdalla", dateOfBirth: "1998", age: 18, stdClass: StudentClass(departmant: "Primary", classname: "Class B"))
let students2 = Student(firstName: "Hassan", lastName: "Ali", dateOfBirth: "1998", age: 18, stdClass: StudentClass(departmant: "Primary", classname: "Class C"))
let students3 = Student(firstName: "Abdorizak", lastName: "Abdalla", dateOfBirth: "1998", age: 18, stdClass: StudentClass(departmant: "Primary", classname: "Class B"))
let students4 = Student(firstName: "Mohamed", lastName: "Hussein", dateOfBirth: "1998", age: 18, stdClass: StudentClass(departmant: "Primary", classname: "Class A"))
let students5 = Student(firstName: "Samiir", lastName: "Ali", dateOfBirth: "1998", age: 18, stdClass: StudentClass(departmant: "Primary", classname: "Class A"))


[students1, students2, students3, students4, students5].forEach { students in
    print(students.checkStudentAge())
}