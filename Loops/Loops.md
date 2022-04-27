# Swift Loops

loops are used to repeat a block of code like if you want to print `Hello World` 100 times loops will help you to print `Hello World` using loop.
swift loops are 3 types:

- For in loop
- while loop
- repeat - while loop

### For in loop

`For in loop` is used to run bloack of code for a certain number of times. also ro iterate over any sequence of such as an array, range, string, Dictionary, etc.
for Example we have an array of numbers we want to iterate:

```swift
let numbers: [Int] = [1, 2, 3, 4, 5]
for num in numbers {
    print(num);
}
// output: 1, 2, 3, 4, 5
```

another example we have student grade we want to get total point will iterate of grade and added together:

```swift
let stdGrade: [Double] = [66.5, 83.5, 65.0, 90.0, 100.0]
// to get total point we need to create variable called totalpoints
var totalPoints: Double = 0.0
for total in stdGrade {
    totalPoints = totalPoints + total
}
```

### while loop

`While loop` basically while works is first to check the condition if condition is ture then iterate for example we have student we want to specify the students age while stdAge is greater than 18 displayed students who greater than 18.

```swift
let stdAges: [Int] = [17,18,20,19,22,24,19,21]
var i = 0
while i < stdAges.count  {
    let ages = stdAges[i]
    if ages > 18 {
        print(ages)
    }
    i += 1
}
```

also if you have many students for example:

```swift

struct Student {
   var name: String
   var age: Int
   var studentClass: String
}

// will create list of students

let s1 = Student(name: "Abdinasir Moha", age: 23, studentClass: "A")
let s2 = Student(name: "Abdiqani Abdi", age: 29, studentClass: "A")
let s3 = Student(name: "Hassan Ahmed", age: 18, studentClass: "A")
let s4 = Student(name: "Caaqil Mohamed", age: 18, studentClass: "A")
let s5 = Student(name: "Mohamed yussuf", age: 24, studentClass: "A")
```

will iterate student to find students who are greater than 18 or equal to using while loop

```swift
let students: [Student] = [s1, s2, s3, s4, s5]

var i = 0
var stdAgesGreaterthan18: [Any] = []
while i < students.count {
    let stdAges = students[i]
    if stdAges.age > 18 {
        stdAgesGreaterthan18.append(stdAges)
    }
    i += 1
}

print(stdAgesGreaterthan18)
```

### repeat While loop

The `repeat...while` loop is similar to while loop with one key difference. The body of `repeat...while` loop is executed once before the test expression is checked.

```swift

        var counter = 0
        repeat {
            print("\(counter)")
            counter += 1
        } while (counter < 10)

```


