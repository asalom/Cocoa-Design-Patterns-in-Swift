# Template Method
[See usage](https://github.com/asalom/Cocoa-Design-Patterns-in-Swift/tree/master/DesignPatterns/DesignPatternsTests/Template-Method)

The Template Method pattern identifies one or more methods that will be called automatically as needed by existing code but should not be called directly by application code.
Motivation: implement common algorithms or processes in a highly reusable way while enabling customization.
We could have a series of operations which are identical except for one part which we would then implement.
Example:

```objc
deinit

func drawRect(_ rect: CGRect)
``` 