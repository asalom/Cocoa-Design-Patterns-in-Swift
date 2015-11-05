# Initializers
[See usage](https://github.com/asalom/Cocoa-Design-Patterns-in-Swift/tree/master/DesignPatterns/DesignPatternsTests/Creation)

### Rule 1
Designated initializers must call a designated initializer from their immediate superclass.

### Rule 2
Convenience initializers must call another initializer available in the same class.

### Rule 3
Convenience initializers must ultimately end up calling a designated initializer.

### In other words. 
Designated initializers must always delegate up.
Convenience initializers must always delegate across.

---

> Excerpt From: Apple Inc. “The Swift Programming Language.” iBooks. https://itun.es/de/jEUH0.l
