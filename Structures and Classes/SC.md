# Structures and Classes
Structures and classes are general-purpose, flexible constructs that become the building blocks of your program’s code. You define properties and methods to add functionality to your structures and classes using the same syntax you use to define constants, variables, and functions.
Unlike other programming languages, Swift doesn’t require you to create separate interface and implementation files for custom structures and classes. In Swift, you define a structure or class in a single file, and the external interface to that class or structure is automatically made available for other code to use.

### difference between a class and a struct?
`Classes` and `structures` (structs) are so similar in Swift that it's easy to get them confused at first, but actually there are some important underlying differences:
- A `struct` cannot inherit from another kind of struct, whereas classes can build on other classes.
- You can change the type of an object at runtime using typecasting. Structs cannot have inheritance, so have only one type.
- If you point two variables at the same struct, they have their own independent copy of the data. With objects, they both point at the same variable.

- A `class` can be inherited from another class usign `:` Also Class uses refrence in memory.
- class is mutable unless special effort is made to make it immutable.
That last point is particularly important: with a struct you know your data is fixed in place, like an integer or other value. This means if you pass your struct into a function, you know it's not going to get modified.

### Definition Syntax
Structures and classes have a similar definition syntax. You introduce structures with the struct keyword and classes with the class keyword. Both place their entire definition within a pair of braces:

```swift
struct SomeStructure {
    // structure definition goes here
}
class SomeClass {
    // class definition goes here
}
```

```swift
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
```
Whenever you define a new structure or class, you define a new Swift type. Give types UpperCamelCase names (such as SomeStructure and SomeClass here) to match the capitalization of standard Swift types (such as String, Int, and Bool). Give properties and methods lowerCamelCase names (such as frameRate and incrementCount) to differentiate them from type names.

### Accessing Properties

You can access the properties of an instance using dot syntax. In dot syntax, you write the property name immediately after the instance name, separated by a period (.), without any spaces:

```swift
print("The width of someResolution is \(someResolution.width)")
// Prints "The width of someResolution is 0
```

### Classes Are Reference Types

Unlike value types, reference types are not copied when they’re assigned to a variable or constant, or when they’re passed to a function. Rather than a copy, a reference to the same existing instance is used.

Here’s an example, using the VideoMode class defined above:

```swift
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0
```

### another Example of Class and Struct
Suppose you want to create a student class with student Information so we'll create seprate for the first will be struct for studentClass and department and second will be class for studentInformation. then i'll use methon inside class to check the student ages just for the sake of example.

```swift
// this is student classname and departmant
struct StudentClass {
    var departmant: String = ""
    var classname: String = ""
}
```
so the Student `class` it will create a property for student class and department.

```swift
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

    // this method checks the student age
    func checkStudentAge() {
        if age >= 18 {
            print("this Student \(firstName + lastName) is Age")
        } else {
            print("this Student \(firstName + lastName) is young")
        }
    }
}
```
after creating the class we will create the student object and pass the value to the class.

```swift
let students1 = Student(firstName: "Abdorizak", lastName: "Abdalla", dateOfBirth: "1998", age: 18, stdClass: StudentClass(departmant: "Primary", classname: "Class B"))
let students2 = Student(firstName: "Hassan", lastName: "Ali", dateOfBirth: "1998", age: 14, stdClass: StudentClass(departmant: "Primary", classname: "Class C"))
let students3 = Student(firstName: "Abdorizak", lastName: "Abdalla", dateOfBirth: "1998", age: 22, stdClass: StudentClass(departmant: "Primary", classname: "Class B"))
let students4 = Student(firstName: "Mohamed", lastName: "Hussein", dateOfBirth: "1998", age: 17, stdClass: StudentClass(departmant: "Primary", classname: "Class A"))
let students5 = Student(firstName: "Samiir", lastName: "Ali", dateOfBirth: "1998", age: 19, stdClass: StudentClass(departmant: "Primary", classname: "Class A"))
```

## how to iterate through the students and get the list of students who are above 18 years old?
you can use for loop or ForEach to get the students who are above 18 years old.

```swift
[students1, students2, students3, students4, students5].forEach { students in
    print(students.checkStudentAge())
}
```

**Example: [Struct Class](./Structures%26Class.playground/Contents.swift)**
