## Enumerations

An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.
`Enumerations` in Swift are first-class types in their own right. They adopt many features traditionally supported only by classes, such as computed properties to provide additional information about the enumeration’s current value, and instance methods to provide functionality related to the values the enumeration represents. Enumerations can also define initializers to provide an initial case value; can be extended to expand their functionality beyond their original implementation; and can conform to protocols to provide standard functionality. [see Here](https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html)

### Enumeration Syntax and Example

```
enum SomeEnumeration {
    // enumeration definition goes here
}
```

will Give you an enumeration with costum weatherType:

```
enum Weather {
    case Rainy
    case Hot
    case Sunny
    case Winter
}

func weatherType(_ typeWether: Weather) {
    switch typeWether {
    case .Rainy:
        print("Today is Rainny")
    case .Hot:
        print("Today is HotDay")
    case .Sunny:
        print("Today is Sunny")
    case .Winter:
        print("Today is Winter")
    }
}

weatherType(.Winter)
```

### Iterating over Enumeration Cases

For some enumerations, it’s useful to have a collection of all of that enumeration’s cases. You enable this by writing : CaseIterable after the enumeration’s name. Swift exposes a collection of all the cases as an allCases property of the enumeration type. Here’s an example:

```
enum Weather: CaseIterable {
    case Rainy
    case Hot
    case Sunny
    case Winter
}

print("there are \(Weather.allCases.count) weather Types")
output: there are 4 weather Types
```

also you can use to iterate over all the cases in the enumeration using for-in loop

```
for items in Weather.allCases {
    print(items)
}
output: // Rainy
        // Hot 
        // Sunny
        // Winter
```
