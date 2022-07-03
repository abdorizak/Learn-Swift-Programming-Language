# Sets
Sets are a type of sequence similar to arrays, except they may not store any item more than once and are unordered. This eliminates them from many places where you would use an array, but they do have one special super-power: it’s extremely fast to check whether a set contains a specific value. In fact, sets perform this operation at the same speed whether they contain 10 items or 10,000 items. [Hacking With Swift](https://www.hackingwithswift.com/example-code/language/what-are-sets)

```swift
var numbers = Set([1, 2, 3])

// use when you want to find item in sets
print(numbers.contains(5))

// sets don't have a method called append() instead of append they use insert()
numbers.insert(5)
```

### When to use a set rather than an array

Sets and arrays both store objects of your choosing, but they have four important differences:

- Sets do not store objects in the order they add them.
- Instead, they are stored in a way to make them fast to find, which means finding items in sets is extremely efficient.
- Sets store each item precisely once.
- All items you want to store in a set must conform to `Hashable`.
  As a result, you should use a set rather than an array if all the following criteria are true:
  - You intend to add each item only once. Sets never allow duplicates.
  - You don’t care about the order of the items in the set.
  - You don’t need to use APIs that require arrays.
  - You’re storing `Hashable` types, either your own or one of Swift’s built-in types likes strings and integers. Sets use hash values for fast look up of items.[Hacking with Swift](https://www.hackingwithswift.com/example-code/language/when-to-use-a-set-rather-than-an-array)
