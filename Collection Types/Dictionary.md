# Dictionary

`Dictionaries` are collections of values just like arrays, but rather than storing things with an integer position you can access them using anything you want.
Each value is associated with a unique key, which acts as an identifier for that value within the dictionary. Unlike items in an array, items in a dictionary don’t have a specified order.

- Dictionary Type Shorthand Syntax
  The type of a Swift dictionary is written in full as `Dictionary<Key, Value>`, where Key is the type of value that can be used as a dictionary key, and Value is the type of value that the dictionary stores for those keys.

Creating an Empty Dictionary

```
var namesOfIntegers: [Int: String] = [:]
// namesOfIntegers is an empty [Int: String] dictionary
```
