## Access Control
Access control restricts access to parts of your code from code in other source files and modules. This feature enables you to hide the implementation details of your code, and to specify a preferred interface through which that code can be accessed and used.

```swift
// most open
open        class CollectionView {}
public      protocol CollectionViewDataSource {}
internal    class SomeInternalClass {}
fileprivate class SomeFilePrivateClass {}
private     class SomePrivateClass {}
// most closed
```

### different between public & private and internal and fileprivate
public: public classs, public variables, public functions are available to any code anywhere in the project. 
Internal: internal classs, internal variables, internal functions are only available to code in the same module. 
Fileprivate: fileprivate classs, fileprivate variables, fileprivate functions are only available to code in the same file. 
Private: private classs, private variables, private functions are only available to code in the same class.

