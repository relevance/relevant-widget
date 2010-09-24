Relevant/Widget
===============

This library is the core of the widget system for Relevant. As a result, it will be a dependency of every widget.

Registering Widgets
-------------------

In order for Relevant to be aware of your widget you will need to register it. You can do this in the same file as your widget, or you can just call it somewhere else if you'd like it to be optional.

    Relevant.register FooWidget
    

