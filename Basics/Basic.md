### Constants and Variables

what is the constant and variable?
`constant` is like when you declate name as constant you will not be able to assign new name like also use let when you want to create a new constant

```
let name = "Abdi"
name = "Ahmed" // this wrong you can't assign new name because it's constant
```

`variable` is not like constant you can assign when you declare it works use when you want to create a new variable `var` for Example:

```
var name = "Abdi"
name = "Ahmed" // this works try in playground
```

- Rule number one is constant and variable mustbe declare before they used

---

### Type Annotation

Type Annotation means you giving a variable Type
Example:

```
var name: String = "Abdi" // this means the variable type is String you can't assign number
name = 50 // this is wrong you cant assign number coz the type of name is String
```

## Naming Constants and Variables

constant variable can contain almost any character, including unicode characters :

```
    let π = 3.14159
    let 你好 = "你好世界"
    let 🐶🐮 = "dogcow"
```

Constant and variable names can’t contain whitespace characters, mathematical symbols, arrows, private-use Unicode scalar values, or line- and box-drawing characters. Nor can they begin with a number, although numbers may be included elsewhere within the name.

Once you’ve declared a constant or variable of a certain type, you can’t declare it again with the same name, or change it to store values of a different type. Nor can you change a constant into a variable or a variable into a constant. For more Go to the [Swift](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html)

### Type Aliases

`Type aliases` define an alternative name for an existing type using `typeAlias` keyword
use typeAlias when you want to an existing type by name
simple Example :

```
   typeAlais name = String
   let ahmed: name = "Ahmed Abdi" // this means ahmed is his type is string instead of writing type as string i used this example typeAlias
```

type Aliases are useful when you define you can use anywhere you want.

### Booleans

Boolean values are referred to as logical becouse they can be true or false
for Example :

```
    let lightIstrun = true
```

To check boolean values we use conditional Statement using `if else`
we have a variable `lightIstrun` let's check

```
    if lightIstrun { // this will check if true, will "Light is trunned on" also if lightIstrun is false will jump else
        print("Light is trunned on")
    } else {
        print("Light is trunned off")
    }
```

### Tuples

Tuples group multiple values into a single compound value. The values within a tuple can be of any type and don’t have to be of the same type as each other.

According to `Paul Handsome` from [Hacking With Swift](https://www.hackingwithswift.com/sixty/2/3/tuples) when he defines, Tuples allow you to store several values together in a single value. That might sound like arrays, but tuples are different:

- You can’t add or remove items from a tuple; they are fixed in size.
- You can’t change the type of items in a tuple; they always have the same types they were created with.
- You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.

```
    var name = (firstname: "Abdorizak", lastname: "Abdalla")
```

to access tuple use dot ( . ) by index or name

```
    name.0  or name.firstname
```

- ⚡️Remember, you can change the values inside a tuple after you create it, but not the types of values. So, if you tried to change name to be (first: "Justin", age: 25) you would get an error.

### Optionals

one of the my hardest concepts is optional but alot of partice i understand is simple i will try to make simple and give you a short concept of optional.

`Optional` in swift optionals are very importantance when you working with dates that dates comes from api it may nil so swift gives you optional.

another one is when you declare a variable and you want to insert something use optional by telling his type for example :

```
    var name: string? // this will set automatically nil
```

another Example :

```
    let number = "123" // this is string value we want to convert to int
    let convertedIntoInt = Int(number)
    // Output:  optional(123)
```

do you know why will print Opetional(123) because of number can be nil
also remember if string is like "abc" to convert to int it's not allowed becouse it can not be numeric

`nil` You set an optional variable to a valueless state by assigning it the special value nil

```
    var food: string? = "Basto"
    // food constains an actual string value of "Basto"
    food = nil
    food now contains no value
```

- ⚡️Remember you can't use nil with non-optional constants and variables, always declare us optional

`Force Unwrapping using if and else`
you can use to force Unwrapp if we are going to use operators like `!=` or `==` to perform Compirison example :

```
if food != nil {
    print("we have a food")
} else {
    print("food is nil")
}
```

once if you sure optional constains value you can add exclamation point `!` to the end optional this means you are effectively says i am sure this optional has value this is know as force Unwrapping
example:

```
if food != nil {
    print("we have a food called \(food!)")
}
```

`Optional Binding`
You use optional binding to find out whether an optional contains a value, and if so, to make that value available as a temporary constant or variable. Optional binding can be used with if and while statements to check for a value inside an optional, and to extract that value into a constant or variable, as part of a single action. Example:

```
if let food = food { // this optional biding
    print ("we have a food called \(food)")
}
```

`Implicitly Unwrapped Optionals` this means you perform unwrapp without using if. this will throw an error if you optional value doesn't contain a value will crash you app that means you making a promise that optional will have a value sometimes this is not best practice only use when you know if optional has a value

```
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation point

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation point
```

### Strings and Characters

A string is a series of characters, such as "hello, world" or "albatross". Swift strings are represented by the String type. The contents of a String can be accessed in various ways, including as a collection of Character values.

Swift’s String and Character types provide a fast, Unicode-compliant way to work with text in your code. The syntax for string creation and manipulation is lightweight and readable, with a string literal syntax that’s similar to C. For more [here](https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html)

`String Literals` is squence of characters sarrounded by double quotes (") example:

```
let greeting = "Hello, world"
```

`Multiline String Literals` als is squence of characters sarrounded by three double quotes (") example:

```
let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""
```

`String Mutability` you indicate whether a particular String can be modified (or mutated) by assigning it to a variable (in which case it can be modified), or to a constant (in which case it can’t be modified):

```
var variableString = "Horse"
variableString += " and carriage"
// variableString is now "Horse and carriage"

let constantString = "Highlander"
constantString += " and another Highlander"
// this reports a compile-time error - a constant string cannot be modified
```

`String Interpolation` is a way to construct a new String value from a mix of constants, variables, literals, and expressions by including their values inside a string literal. You can use string interpolation in both single-line and multiline string literals. Each item that you insert into the string literal is wrapped in a pair of parentheses, prefixed by a backslash (\):

```
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
// message is "3 times 2.5 is 7.5"
```

You can use extended string delimiters to create strings containing characters that would otherwise be treated as a string interpolation. For example:

```
print(#"Write an interpolated string in Swift using \(multiplier)."#)
// Prints "Write an interpolated string in Swift using \(multiplier)."
```

To use string interpolation inside a string that uses extended delimiters, match the number of number signs after the backslash to the number of number signs at the beginning and end of the string. For example:

```
print(#"6 times 7 is \#(6 * 7)."#)
// Prints "6 times 7 is 42."
```

For more Details Go to the [Swift Documentation](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html)
