## Properties
Properties associate values with a particular class, structure, or enumeration. can they have there own variables and constants, these are called properties.

```swift
class Person {

 // define two properties
 var name: String = ""
 var age: Int = 0
}

var person1 = Person()

// assign values to properties
person1.name = "Kevin"
person1.age = 42

// access properties
print("Name:", person1.name)
print("Age:", person1.age)
```

Output
```terminal
Name: Kevin
Age: 42
```

In the above example, we have created a class named `Person` with two properties: name and age.

Here, we have used the object `person1` to access the properties:

`person1.name` - access the `name` property
`person1.age` - access the `age` property

```Note
Note: These properties we defined above are also called stored properties as they store actual values for each instance of the Person class.
```

### Computed properties
In addition to stored properties, classes, structures, and enumerations can define computed properties, which don’t actually store a value. Instead, they provide a getter and an optional setter to retrieve and set other properties and values indirectly.

```swift
struct Person {
    var age: Int

    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var fan = Person(age: 25)
print(fan.ageInDogYears)
```

### Property observers
Swift lets you add code to be run when a property is about to be changed or has been changed. This is frequently a good way to have a user interface update when a value changes, for example.

There are two kinds of property observer: willSet and didSet, and they are called before or after a property is changed. In willSet Swift provides your code with a special value called newValue that contains what the new property value is going to be, and in didSet you are given oldValue to represent the previous value.

Let's attach two property observers to the clothes property of a Person struct:

```swift
struct Person {
    var name: String {
        willSet {
            updateUI(msg: "I'm changing from \(name) to \(newValue)")
        }

        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(name)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor = Person(clothes: "john")
taylor.name = "johnny"
```

For more information about Properties, see [Properties](https://https://docs.swift.org/swift-book/LanguageGuide/Properties.html)