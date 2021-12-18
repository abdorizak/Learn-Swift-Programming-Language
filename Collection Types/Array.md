# What's Array?

`Array` is an ordered list which can be store same data type and also is used to store collection of data that data can be Any.

- Create an Empty Array

```
var myArray = [Int]() // Note  when you want to create an empty array you need to specify what kind of this array if you forget xcode will tell you to specify array type
// MyArray now is is An Int you can't store string or character only Integer

// also you can create using this
var myArray2: [String] = [] // this is another option you can use to create a new Empty array
```

- Create an Array with Default Value
  there is a method called `Array(repeating: _, count: _)` the first argument `repeating` is what you want to repeate and second argument is how many times you want to repeat it For example:

```
// i want to repeat my Name 5 times...
var myName = Array(repeating: "Abdo", count: 5)
// My Name will Repeate ["Abdo", "Abdo", "Abdo", "Abdo", "Abdo"]
```
