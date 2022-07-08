### Singletons
Singletons are a way to create a single instance of a class. Singletons are useful when you need to share a single instance of a class across your application.

```swift
class Singleton {
    static let sharedInstance = Singleton() // create a single instance of the class
    private init() {}
}
```

simple Example using closer to the Singleton pattern


```swift
class NetworkManager {
    static shared: NetworkManager = {
        let instance = NetworkManager()

        return instance
    }()
}
```