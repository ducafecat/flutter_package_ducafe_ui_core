# ducafe_ui_core Documentation

[中文说明](https://github.com/ducafecat/flutter_package_ducafe_ui_core/blob/main/README-cn.md)

ducafe_ui_core is a Flutter UI core library that provides many useful extension methods and utility classes to simplify UI development in Flutter applications.

## References

- https://pub.dev/packages/ducafe_ui_core
- https://github.com/ducafecat/flutter_package_ducafe_ui_core
- https://ducafecat.com

## Main Features

1. Screen adaptation tools (ScreenUtil)
2. Widget extension methods
3. Context extension methods
4. String extension methods
5. List extension methods
6. Theme access extension methods
7. Platform detection extension methods
8. UI utility classes

## Installation

Add this dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  ducafe_ui_core: ^1.0.1
```

Then run the `flutter pub get` command.

## Usage Examples

### Screen Adaptation

Initialize ScreenUtil at the root of your application:

```dart
import 'package:ducafe_ui_core/ducafe_ui_core.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: child,
        );
      },
      child: const HomePage(),
    ),
  );
}
```

### Widget Extensions

Examples:

```dart
// Create a centered text widget
final centeredText = Text('Hello, World!').center();

// Create a card with padding and shadow
final styledCard = Text('Card Content')
    .padding(all: 16)
    .card(elevation: 4)
    .boxShadow(blurRadius: 10);

// Create a clickable button
final clickableButton = Text('Click me')
    .padding(all: 8)
    .inkWell(onTap: () => print('Button clicked!'));

// Create a scaled widget with animation
final animatedWidget = Icon(Icons.star)
    .scale(all: 1.5)
    .animate(Duration(milliseconds: 300), Curves.easeInOut);
```

Extensions:

- animate: Add animation effects to widgets
- align: Set widget alignment
- alignCenter: Center align widget
- alignLeft: Left align widget
- alignRight: Right align widget
- alignTop: Top align widget
- alignBottom: Bottom align widget
- parent: Apply parent widget
- padding: Add padding to widget
- paddingBottom: Add bottom padding
- paddingHorizontal: Add horizontal padding
- paddingLeft: Add left padding
- paddingRight: Add right padding
- paddingTop: Add top padding
- paddingVertical: Add vertical padding
- paddingDirectional: Add directional padding
- sliverPadding: Add padding to Sliver widgets
- opacity: Set widget opacity
- offstage: Control widget visibility
- neumorphism: Add neumorphic effect
- boxShadow: Add shadow effect
- ripple: Add ripple effect
- rotate: Rotate widget
- scale: Scale widget
- translate: Translate widget
- transform: Apply transformation
- overflow: Control widget overflow behavior
- scrollable: Make widget scrollable
- expanded: Expand widget in Flex container
- flexible: Make widget flexible in Flex container
- positioned: Position widget in Stack
- positionedDirectional: Directionally position widget in Stack
- inkWell: Add ink effect and tap events
- safeArea: Place widget in safe area
- semanticsLabel: Add semantic label
- gestures: Add gesture recognition
- center: Center widget
- fittedBox: Fit widget to parent
- fractionallySizedBox: Size widget based on parent fraction
- card: Wrap widget in card
- limitedBox: Limit widget maximum size
- material: Wrap widget in Material
- mouseRegion: Add mouse interaction area

### Color Extensions

Example:

```dart
context.colors.scheme
```

Extensions:

- `primary`: Primary color
- `primaryLight`: Light version of primary color
- `primaryDark`: Dark version of primary color
- `canvas`: Canvas color
- `scaffoldBackground`: Scaffold background color
- `card`: Card color
- `divider`: Divider color
- `focus`: Focus color
- `hover`: Hover color
- `highlight`: Highlight color
- `splash`: Splash color
- `unselectedWidget`: Unselected widget color
- `disabled`: Disabled state color
- `secondaryHeader`: Secondary header color
- `dialogBackground`: Dialog background color
- `indicator`: Indicator color
- `hint`: Hint text color
- `scheme`: Complete color scheme
- `shadow`: Shadow color

### Screen Size Information

Example:

```dart
context.screenWidth
```

Extensions:

- `screenWidth`: Get screen width
- `screenHeight`: Get screen height
- `bottomBarHeight`: Get bottom navigation bar height
- `statusBarHeight`: Get status bar height
- `textScaleFactor`: Get text scale factor
- `scaleWidth`: Get width scale factor
- `scaleHeight`: Get height scale factor

### Duration Extensions

Example:

```dart
// Create a 5-second Duration
Duration fiveSeconds = 5.seconds;
```

Extensions:

- microseconds: Convert number to Duration in microseconds
- milliseconds: Convert number to Duration in milliseconds
- seconds: Convert number to Duration in seconds
- minutes: Convert number to Duration in minutes
- hours: Convert number to Duration in hours
- days: Convert number to Duration in days
- months: Convert number to Duration in months (assumes 30 days per month)
- quarters: Convert number to Duration in quarters (assumes 90 days per quarter)
- quadrimesters: Convert number to Duration in quadrimesters (assumes 120 days)
- years: Convert number to Duration in years (assumes 365 days per year)
- future: Start a delayed Future

### Icon Extensions

Example:

```dart
// Create an original icon
Icon originalIcon = Icon(Icons.star, size: 24, color: Colors.yellow);

// Create a new icon with modified size and color using copyWith()
Icon newIcon = originalIcon.copyWith(size: 32, color: Colors.red);

// Modify only the icon size
Icon largerIcon = originalIcon.iconSize(48);

// Modify only the icon color
Icon blueIcon = originalIcon.iconColor(Colors.blue);
```

### List<Widget> Extensions

Example:

```dart
List<Widget> widgets = [Widget1(), Widget2(), Widget3()];
Widget column = widgets.toColumn(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  separator: Divider(),
);
```

Extensions:

- toColumn(): Convert Widget list to Column
- toColumnSpace(): Convert Widget list to Column with spacing
- toRow(): Convert Widget list to Row
- toRowSpace(): Convert Widget list to Row with spacing
- toStack(): Convert Widget list to Stack
- toListView(): Convert Widget list to ListView
- toWrap(): Convert Widget list to Wrap

### MediaQuery Extensions

Example:

```dart
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen width
    double screenWidth = context.sizes.width;

    // Get screen height
    double screenHeight = context.sizes.height;

    // Get screen padding
    EdgeInsets padding = context.sizes.padding;

    // Get device pixel ratio
    double pixelRatio = context.sizes.devicePixelRatio;

    // Use nullable properties
    double? maybeWidth = context.sizes.maybeWidth;

    return Container(
      width: screenWidth * 0.8,
      height: screenHeight * 0.5,
      padding: padding,
      child: Text(
        'Device Pixel Ratio: $pixelRatio',
        style: TextStyle(fontSize: 16 * context.sizes.textScaler.scale(1.0)),
      ),
    );
  }
}
```

Extensions:

- width: Screen width
- height: Screen height
- padding: Screen padding
- viewInsets: View insets
- systemGestureInsets: System gesture insets
- viewPadding: View padding
- devicePixelRatio: Device pixel ratio
- textScaler: Text scaler

### Navigator Extensions

Example:

```dart
context.navigator.pushMaterial(NewPage());
```

Extensions:

- canPop: Check if current route can be popped
- maybePop: Try to pop current route
- pop: Pop current route
- popUntil: Pop routes until condition is met
- push: Push new route
- pushMaterial: Push new page using MaterialPageRoute
- pushCupertino: Push new page using CupertinoPageRoute
- popAndPushNamed: Pop current route and push named route
- pushAndRemoveUntil: Push new route and remove until condition is met
- pushNamed: Push named route
- pushNamedAndRemoveUntil: Push named route and remove until condition is met
- pushReplacement: Push new route and replace current route
- pushReplacementMaterial: Push new page using MaterialPageRoute and replace current route
- pushReplacementCupertino: Push new page using CupertinoPageRoute and replace current route
- pushReplacementNamed: Push named route and replace current route
- removeRoute: Remove specified route
- removeRouteBelow: Remove route below specified route
- replace: Replace specified route
- replaceRouteBelow: Replace route below specified route

### Number to EdgeInsets Extensions

Example:

```dart
// Create padding with all sides set to 16
EdgeInsets padding1 = 16.paddingAll();

// Create horizontal padding of 20
EdgeInsets padding2 = 20.paddingHorizontal();

// Create vertical padding of 10
EdgeInsets padding3 = 10.paddingVertical();

// Create padding with only top set to 8
EdgeInsets padding4 = 8.paddingTop();

// Create padding with only left set to 12
EdgeInsets padding5 = 12.paddingLeft();

// Create padding with only right set to 15
EdgeInsets padding6 = 15.paddingRight();

// Create padding with only bottom set to 5
EdgeInsets padding7 = 5.paddingBottom();
```

Extensions:

- paddingAll: Create padding with equal offset on all sides
- paddingHorizontal: Create symmetric horizontal padding
- paddingVertical: Create symmetric vertical padding
- paddingTop: Create padding with only top offset
- paddingLeft: Create padding with only left offset
- paddingRight: Create padding with only right offset
- paddingBottom: Create padding with only bottom offset

### String Extensions

Example:

```dart
// Case conversion
print('hello world'.capitalize()); // Output: Hello World
print('hello world'.capitalizeFirst()); // Output: Hello world

// Boolean conversion
print('true'.isBool()); // Output: true
print('false'.toBool()); // Output: false

// Number conversion
print('123'.isNum()); // Output: true
print('3.14'.toDouble()); // Output: 3.14
print('42'.toInt()); // Output: 42

// Color conversion
Color color = 'FF5733'.toColor;
MaterialColor materialColor = 'FF5733'.toMaterialColor;

// String processing
print('Hello  World'.removeAllWhitespace()); // Output: HelloWorld
print('abc123'.hasMatch(r'\d+')); // Output: true
print('<p>Hello</p>'.clearHtml); // Output: Hello
```

Extensions:

- capitalize: Capitalize first letter of each word
- capitalizeFirst: Capitalize first letter of string
- isBool: Check if string can be converted to boolean
- toBool: Convert string to boolean
- isNum: Check if string can be converted to number
- toNum: Convert string to number
- isDouble: Check if string can be converted to double
- toDouble: Convert string to double
- isInt: Check if string can be converted to integer
- toInt: Convert string to integer
- toColor: Convert hex color string to Color object
- toMaterialColor: Convert hex color string to MaterialColor object
- removeAllWhitespace: Remove all whitespace from string
- hasMatch: Check if string matches specified regex pattern
- clearHtml: Remove all HTML tags from string

### Text Extensions

Example:

```dart
Text myText = Text('Hello, World!');

// Modify text style
myText = myText.textStyle(TextStyle(color: Colors.blue));

// Set text to bold
myText = myText.bold();

// Set text to italic
myText = myText.italic();

// Set font size
myText = myText.fontSize(18);

// Set font family
myText = myText.fontFamily('Roboto');

// Add text shadow
myText = myText.textShadow(color: Colors.grey, blurRadius: 2);

// Set text color
myText = myText.textColor(Colors.red);

// Set text alignment
myText = myText.textAlignment(TextAlign.center);

// Combine multiple styles
myText = myText
    .bold()
    .fontSize(20)
    .textColor(Colors.green)
    .textAlignment(TextAlign.right);
```

Extensions:

- copyWith: Create a new Text object with optionally modified properties
- textStyle: Apply new TextStyle
- textScale: Set text scale factor
- bold: Set text to bold
- italic: Set text to italic
- fontWeight: Set text font weight
- fontSize: Set text font size
- fontFamily: Set text font family
- letterSpacing: Set text letter spacing
- wordSpacing: Set text word spacing
- textShadow: Add shadow effect to text
- textElevation: Add elevation effect to text
- textColor: Set text color
- textAlignment: Set text alignment
- textDirection: Set text direction
- textBaseline: Set text baseline
- textWidthBasis: Set text width basis

### TextSpan Extensions

Example:

```dart
TextSpan myTextSpan = TextSpan(text: 'Hello, World!');

// Modify text style
myTextSpan = myTextSpan.textStyle(TextStyle(color: Colors.blue));

// Set text to bold
myTextSpan = myTextSpan.bold();

// Set text to italic
myTextSpan = myTextSpan.italic();

// Set font size
myTextSpan = myTextSpan.fontSize(18);

// Set font family
myTextSpan = myTextSpan.fontFamily('Roboto');

// Add text shadow
myTextSpan = myTextSpan.textShadow(color: Colors.grey, blurRadius: 2);

// Set text color
myTextSpan = myTextSpan.textColor(Colors.red);

// Combine multiple styles
myTextSpan = myTextSpan
    .bold()
    .fontSize(20)
    .textColor(Colors.green);
```

Extensions:

- copyWith: Create a new TextSpan object with optionally modified properties
- textStyle: Apply new TextStyle
- bold: Set text to bold
- italic: Set text to italic
- fontWeight: Set text font weight
- fontSize: Set text font size
- fontFamily: Set text font family
- letterSpacing: Set text letter spacing
- wordSpacing: Set text word spacing
- textShadow: Add shadow effect to text
- textElevation: Add elevation effect to text
- textColor: Set text color
- textBaseline: Set text baseline

### Theme Extensions

Example:

```dart
// Using in a Widget
Widget build(BuildContext context) {
  // Get button theme
  final buttonTheme = context.themes.button;

  // Get text theme
  final textTheme = context.themes.text;

  // Get icon theme
  final iconTheme = context.themes.icon;

  // ... use other theme data
}
```

```dart
Widget build(BuildContext context) {
  if (context.isDarkMode) {
    // App is in dark mode
    return DarkThemeWidget();
  } else if (context.isLightMode) {
    // App is in light mode
    return LightThemeWidget();
  }
  // Other cases
  return DefaultThemeWidget();
}
```

Extensions:

- themes: Get \_Themes object containing all theme data
- isDarkMode: Check if app is in dark mode
- isLightMode: Check if app is in light mode

### Development Tools

Example:

```dart
Object.log("Log content")
```

- `log`: Print log message

## Notes

This documentation summarizes the main features and usage of the ducafe_ui_core library. You can extend or modify this documentation as needed. If you need more detailed explanations or have any questions, please feel free to ask.
