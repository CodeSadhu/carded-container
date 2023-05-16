<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

The Card widget in Flutter applies shadows to the bottom and left of the card. CardedContainer is instead a simple Card with shadows on all four edges.


## Usage

Just use CardedContainer instead of Container/Card wherever you want to apply shadows
on all four edges. The widget contains all properties of a Container, so styling
and customization is similar to that of a Container.


```dart
CardedContainer(
    blurRadius: 8,
    padding: EdgeInsets.all(10),
    child: Text(
        'This is a container with shadows on all four edges',
        style: TextStyle(
        fontSize: 18,
        ),
    ),
)
```

### Shadow customization

- If you want the shadow to be deeper (an increase in elevation), increase the blurRadius (5 by default)
- Change the shadow color by using the shadowColor property
- Change how far the shadow is cast by increasing the spreadRadius property