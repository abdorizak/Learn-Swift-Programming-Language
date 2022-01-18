# Structures and Classes

Structures and classes are general-purpose, flexible constructs that become the building blocks of your program’s code. You define properties and methods to add functionality to your structures and classes using the same syntax you use to define constants, variables, and functions.

Unlike other programming languages, Swift doesn’t require you to create separate interface and implementation files for custom structures and classes. In Swift, you define a structure or class in a single file, and the external interface to that class or structure is automatically made available for other code to use.

### difference between a class and a struct?

`Classes` and `structures` (structs) are so similar in Swift that it's easy to get them confused at first, but actually there are some important underlying differences:

* A `struct` cannot inherit from another kind of struct, whereas classes can build on other classes.
* You can change the type of an object at runtime using typecasting. Structs cannot have inheritance, so have only one type.
* If you point two variables at the same struct, they have their own independent copy of the data. With objects, they both point at the same variable.

That last point is particularly important: with a struct you know your data is fixed in place, like an integer or other value. This means if you pass your struct into a function, you know it's not going to get modified.

### Definition Syntax
Structures and classes have a similar definition syntax. You introduce structures with the struct keyword and classes with the class keyword. Both place their entire definition within a pair of braces:

``` swift
struct SomeStructure {
    // structure definition goes here
}
class SomeClass {
    // class definition goes here
}
```


