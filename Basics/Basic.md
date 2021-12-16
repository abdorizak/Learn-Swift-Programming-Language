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

For more Details Go to the [Swift Documentation](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html)
