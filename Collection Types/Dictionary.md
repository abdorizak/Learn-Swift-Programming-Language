# Dictionary

`Dictionaries` are collections of values just like arrays, but rather than storing things with an integer position you can access them using anything you want.
Each value is associated with a unique key, which acts as an identifier for that value within the dictionary. Unlike items in an array, items in a dictionary don’t have a specified order.

- Dictionary Type Shorthand Syntax
  The type of a Swift dictionary is written in full as `Dictionary<Key, Value>`, where Key is the type of value that can be used as a dictionary key, and Value is the type of value that the dictionary stores for those keys.

Creating an Empty Dictionary

```swift
var namesOfIntegers: [Int: String] = [:]
// namesOfIntegers is an empty [Int: String] dictionary
```

This example creates an empty dictionary of type [Int: String] to store human-readable names of integer values. Its keys are of type Int, and its values are of type String.

- Creating a Dictionary with a Dictionary Literal
  You can also initialize a dictionary with a dictionary literal, which has a similar syntax to the array literal seen earlier. A dictionary literal is a shorthand way to write one or more key-value pairs as a Dictionary collection.
  A key-value pair is a combination of a key and a value. In a dictionary literal, the key and value in each key-value pair are separated by a colon. The key-value pairs are written as a list, separated by commas, surrounded by a pair of square brackets
  `[key 1: value 1, key 2: value 2, key 3: value 3]`

The example below creates a dictionary to store the names of international airports. In this dictionary, the keys are three-letter International Air Transport Association codes, and the values are airport names:

```swift
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin", "AAI":"Mogadisho Adan Adde International"]
```

- Iterating Over a Dictionary

```swift
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}
//Output: // YYZ: Toronto Pearson
          // DUB: Dublin
          // AAI: Mogadisho Adan Adde International
```
