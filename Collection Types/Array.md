# What's Array?

`Array` is an ordered list which can be store same data type and also is used to store collection of data that data can be Any.

- Create an Empty Array

```swift
var myArray = [Int]() // Note  when you want to create an empty array you need to specify what kind of this array if you forget xcode will tell you to specify array type
// MyArray now is is An Int you can't store string or character only Integer

// also you can create using this
var myArray2: [String] = [] // this is another option you can use to create a new Empty array
```

- Create an Array with Default Value
  there is a method called `Array(repeating: _, count: _)` the first argument `repeating` is what you want to repeate and second argument is how many times you want to repeat it For example:

```swift
// i want to repeat my Name 5 times...
var myName = Array(repeating: "Abdo", count: 5)
// My Name will Repeate ["Abdo", "Abdo", "Abdo", "Abdo", "Abdo"]
```

- Create an Array with an Array Literal
  An array literal is written as list of values, separated by commas and sarrounded by brackets For example:

```swift
var cars: [String] = ["BMW", "Tesla", "Tayota"]
// cars has been initialized with three cars
```

we create cars array with variable if we create ou array as constant we can't add or remove anything with that you may get an error for Example:

```swift
let letters: [String] = ["A", "B", "C", "D"] // letters has been initialized with constant
// you cant do insert or remove because it's constant and Xcode will tell you
// Cannot use mutating member on immutable value: 'letters' is a 'let' constant
```

- Accessing and Modifying an Array
  we can access and modify the array through its methos and properties or by using subscript syntax,for example to find out the number of items in an array, check its read-only count property:

```swift
print("the cars contains \(cars.count) items")
// the cars contains 3 items
```

use boolean when you want to check the array is Empty or not.

```swift
if cars.isEmpty {
    print("Cars are empty")
} else {
    print("Cars aren't empty")
}
```

you can also use a methods like `append(_:)` to add a new item to the array.
`insert(_ , at: _)` this method simply helps you to add a new item to the array specifying that item index.
`remove(at:_)` this method removes item index by describing item index in the array.
`removeAll()` this method removes all items in the array.

```swift
cars.append("Ferrari") // cars will add new item using append method
// or you can use +=
cars += ["Audi"]
cars.remove(ar: 3) // note array index start's 0 or you array length - 1
```

- Iterating Over an Array
  you can iterate over the entire set of values in an array with `for-in` loop:

```swift
for items in cars {
    print(items)
}
// Output:  // BMW
           // Tesla
           // Tayota
           // Ferrari
           // Audi
```
