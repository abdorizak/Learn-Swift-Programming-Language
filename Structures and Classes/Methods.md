## Methods
Methods are functions that belong to a class or Structures. Methods are called using the `.` operator.

```swift
class Person {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    func sayHello() {
        print("Hello, my name is \(name) and I am \(age) years old.")
    }
}
```

```swift
let person = Person(name: "Abdi", age: 30)
person.sayHello() // prints "Hello, my name is Abdi and I am 30 years old."
```

### Static Methods
Static methods are methods that belong to the class itself. They are called using the class name.

```swift
class counter {
    static var count = 0
    static func increment() {
        count += 1
    }
}
```

```swift
counter.increment() // count is now 1, this is a static method  you can call it without creating an instance of the class.
counter.increment() // count is now 2
```