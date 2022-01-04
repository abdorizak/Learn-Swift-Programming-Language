## Enumerations

An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.
`Enumerations` in Swift are first-class types in their own right. They adopt many features traditionally supported only by classes, such as computed properties to provide additional information about the enumeration’s current value, and instance methods to provide functionality related to the values the enumeration represents. Enumerations can also define initializers to provide an initial case value; can be extended to expand their functionality beyond their original implementation; and can conform to protocols to provide standard functionality. [see Here](https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html)

Enumeration Syntax

```
enum SomeEnumeration {
    // enumeration definition goes here
}
```

another Example of enumeration:

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
