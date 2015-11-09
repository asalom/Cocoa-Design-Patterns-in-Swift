# Dynamic Creation
[See usage](https://github.com/asalom/Cocoa-Design-Patterns-in-Swift/tree/master/DesignPatterns/DesignPatternsTests/Basic/Dynamic%20Creation)

Creation of classes from strings. Useful for plugin architectures.
We can add functionality to an existing system without compiling the whole. We just need to subclass DynamicCommand and overre the command method.

CoreData uses this approach when choosing which NSManagedObject subclass should instantiate
Archiving/Unarchiving also stores the name of the class so it knows which object to instantiate.