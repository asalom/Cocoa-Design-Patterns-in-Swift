# Template Method
[See usage](https://github.com/asalom/Cocoa-Design-Patterns-in-Swift/tree/master/DesignPatterns/DesignPatternsTests/Basic/Template%20Method)

The Template Method pattern identifies one or more methods that will be called automatically as needed by existing code but should not be called directly by application code.
Motivation: implement common algorithms or processes in a highly reusable way while enabling customization.
We could have a series of operations which are identical except for one part which we would then implement.
Example:

```objc
deinit

func drawRect(_ rect: CGRect)
``` 

### Consequences
1. Subclasses produces coupling.
2. Intention hard to document, i.e. 'You shouldn't call super...', 'Calling super does nothing', etc.
3. All subclasses may require unrelated customization.

### NOTE
Consider using delegates or blocks