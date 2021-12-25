# Conditional Statements

conditional Statements is wayt to check state if the expression is true do that or do that else do this, there is many was to check using `if-else` or `guard` or `switch` i will give you both them example,

- if - else
  i want to check my user age if the user less than 18 years old will not allowed
  let say my userAge is 15

```
if userAge < 18 {
    print("we are sorry, you are not allowed")
} else {
    print("Accepted")
}
```

another example of if statement:

```
let hourOfDay = 12
var timeOfDay = ""

if hourOfDay < 6 {
  timeOfDay = "Early morning"
} else if hourOfDay < 12 {
  timeOfDay = "Morning"
} else if hourOfDay < 17 {
  timeOfDay = "Afternoon"
} else if hourOfDay < 20 {
  timeOfDay = "Evening"
} else if hourOfDay < 24 {
  timeOfDay = "Late evening"
} else {
  timeOfDay = "INVALID HOUR!"
}
```

- Ternary Operator
  The ternary conditional operator takes a condition and returns one of two values, depending on whether the condition was true or false. The syntax is as follows:
  (<CONDITION>) ? <TRUE VALUE> : <FALSE VALUE>

```
let a = 5
let b = 10

let min = a < b ? a : b
let max = a > b ? a : b
```

- Guard Statement
  also swift has guard statement is shorthand syntax is similar to if statement for example:

````

func voteEligibility() {

    let age = 12

guard age >= 18 else {
print("Not Eligible to vote")
return
}

print("Eligible to vote")
}

voteEligibility()

```

- Switch statements
  You can also control flow via the switch statement. It executes different code depending on the value of a variable or constant. Here’s a switch statement that acts on an integer:

```

let hourOfDay = 12
var timeOfDay = ""

switch hourOfDay {
case 0, 1, 2, 3, 4, 5:
timeOfDay = "Early morning"
case 6, 7, 8, 9, 10, 11:
timeOfDay = "Morning"
case 12, 13, 14, 15, 16:
timeOfDay = "Afternoon"
case 17, 18, 19:
timeOfDay = "Evening"
case 20, 21, 22, 23:
timeOfDay = "Late evening"
default:
timeOfDay = "INVALID HOUR!"
}

print(timeOfDay)

```

```
````
