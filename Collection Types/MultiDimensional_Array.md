## Multidimentional Array
Multidimentional Array is an array with more than two dimensions In a matrix, the two dimensions are represented by rows and columns. Each element is defined by two subscripts, the row index and the column index.

example:
```swift
let array2D: [[Int]] = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
print(array2D[0][0]) // 1
// output: first column of row which is 1 or you can print the first row of the matrix
print(array2D[0]) // [1, 2, 3]
```

### how to iterate through a multidimentional array

```swift
for row in 0..<array2D.count {
    for column in 0..<array2D[row].count {
        print(array2D[row][column])
    }
    print("\n")
}
```
