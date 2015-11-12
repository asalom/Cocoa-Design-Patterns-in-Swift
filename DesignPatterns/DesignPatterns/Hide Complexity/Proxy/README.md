# Proxy
[See usage](https://github.com/asalom/Cocoa-Design-Patterns-in-Swift/tree/master/DesignPatterns/DesignPatternsTests/Hide%20Complexity/Proxy)


The proxy pattern is used to provide a surrogate or placeholder object, which references an underlying object.

1. Virtual Proxy – In place of a complex or heavy object, use a skeleton representation. When an underlying image is huge in size, just represent it using a virtual proxy object and on demand load the real object. You know that the real object is expensive in terms of instantiation and so without the real need we are not going to use the real object. Until the need arises we will use the virtual proxy.

2. Protection Proxy – Are you working on an MNC? If so, we might be well aware of the proxy server that provides us internet by restricting access to some sort of websites like public e-mail, social networking, data storage etc. The management feels that, it is better to block some content and provide only work related web pages. Proxy server does that job. This is a type of proxy design pattern.

Proxies may be used to capture method calls and to be re-sent at a different time, re-sent multiple times, sent to another or multiple objects, changed or substituted for other method calls, conditionally ignored, etc.
A proxy could also be the proxy of multiple objects hence simulating multiple inheritance with all the benefits plus mentioned before.

Example taken from https://en.wikipedia.org/wiki/Proxy_pattern

And 

1. https://github.com/ochococo/Design-Patterns-In-Swift#-protection-proxy

2. https://github.com/ochococo/Design-Patterns-In-Swift#-virtual-proxy