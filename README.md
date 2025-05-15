# Flutter UI Widgets Guide

This guide introduces various Flutter UI widgets categorized into **Layout Widgets** and **Common Widgets**, with simple and intuitive explanations and examples.

---

## 1. Layout Widgets

Layout widgets help you arrange other widgets on the screen. They decide how widgets are positioned, aligned, and spaced.

### a. `Column`

* **Purpose:** Arranges children vertically (top to bottom).
* **Example:**

```dart
Column(
  children: [
    Text('Hello'),
    Text('World'),
  ],
)
```

### b. `Row`

* **Purpose:** Arranges children horizontally (left to right).
* **Example:**

```dart
Row(
  children: [
    Icon(Icons.star),
    Text('Rating'),
  ],
)
```

### c. `Container`

* **Purpose:** Adds padding, margin, borders, colors, and size to a child.
* **Example:**

```dart
Container(
  padding: EdgeInsets.all(16),
  color: Colors.blue,
  child: Text('Hello'),
)
```

### d. `Expanded`

* **Purpose:** Fills available space inside `Row` or `Column`.
* **Example:**

```dart
Row(
  children: [
    Expanded(child: Text('Left')),
    Expanded(child: Text('Right')),
  ],
)
```

### e. `Stack`

* **Purpose:** Overlaps children like layers.
* **Example:**

```dart
Stack(
  children: [
    Image.asset('background.jpg'),
    Text('On top!'),
  ],
)
```

### f. `Align`

* **Purpose:** Positions a child within its parent.
* **Example:**

```dart
Align(
  alignment: Alignment.topRight,
  child: Text('Top Right'),
)
```

### g. `Center`

* **Purpose:** Centers a widget inside its parent.
* **Example:**

```dart
Center(
  child: Text('Centered Text'),
)
```

### h. `Padding`

* **Purpose:** Adds space around a widget.
* **Example:**

```dart
Padding(
  padding: EdgeInsets.all(8),
  child: Text('Padded Text'),
)
```

### i. `SizedBox`

* **Purpose:** Adds fixed space between widgets or gives specific size.
* **Example:**

```dart
SizedBox(height: 20)
```

---

## 2. Common Widgets

These are everyday widgets used in Flutter apps for building basic UI components.

### a. `Text`

* **Purpose:** Displays a string of text.
* **Example:**

```dart
Text('Hello Flutter', style: TextStyle(fontSize: 24))
```

### b. `Image`

* **Purpose:** Displays an image from assets, network, or file.
* **Examples:**

```dart
Image.asset('assets/logo.png')
```

```dart
Image.network('https://example.com/image.jpg')
```

### c. `Icon`

* **Purpose:** Displays a Material icon.
* **Example:**

```dart
Icon(Icons.favorite, color: Colors.red)
```

### d. `ElevatedButton`

* **Purpose:** A button with elevation (shadow).
* **Example:**

```dart
ElevatedButton(
  onPressed: () {},
  child: Text('Click Me'),
)
```

### e. `TextField`

* **Purpose:** Input field for text.
* **Example:**

```dart
TextField(
  decoration: InputDecoration(labelText: 'Enter name'),
)
```

### f. `ListView`

* **Purpose:** Scrollable list of widgets.
* **Example:**

```dart
ListView(
  children: [
    Text('Item 1'),
    Text('Item 2'),
  ],
)
```

### g. `Scaffold`

* **Purpose:** Provides a structure for app UI (app bar, body, drawer, etc).
* **Example:**

```dart
Scaffold(
  appBar: AppBar(title: Text('My App')),
  body: Center(child: Text('Home')),
)
```

### h. `AppBar`

* **Purpose:** A top app bar with title and actions.
* **Example:**

```dart
AppBar(
  title: Text('My Page'),
  actions: [Icon(Icons.settings)],
)
```

### i. `Card`

* **Purpose:** A container with rounded corners and elevation.
* **Example:**

```dart
Card(
  child: Padding(
    padding: EdgeInsets.all(16),
    child: Text('This is a card'),
  ),
)
```

### j. `GestureDetector`

* **Purpose:** Detects gestures like tap, double-tap, swipe, and long press.
* **Example:**

```dart
GestureDetector(
  onTap: () {
    print('Tapped!');
  },
  child: Text('Tap me'),
)
```

### k. `InkWell`

* **Purpose:** A Material-styled gesture detector with a ripple effect.
* **Example:**

```dart
InkWell(
  onTap: () {
    print('Tapped with ripple!');
  },
  child: Padding(
    padding: EdgeInsets.all(8),
    child: Text('Ripple Tap'),
  ),
)
```

### l. `Switch`

* **Purpose:** A toggle control for on/off (boolean) states.
* **Example:**

```dart
bool _switchValue = false;

Switch(
  value: _switchValue,
  onChanged: (bool newValue) {
    setState(() {
      _switchValue = newValue;
    });
  },
)
```

### m. `Slider`

* **Purpose:** Selects a value from a continuous range.
* **Example:**

```dart
double _sliderValue = 20.0;

Slider(
  value: _sliderValue,
  min: 0,
  max: 100,
  onChanged: (double newValue) {
    setState(() {
      _sliderValue = newValue;
    });
  },
)
```

### n. `Checkbox`

* **Purpose:** A square box for true/false (checked/unchecked) state.
* **Example:**

```dart
bool _checked = false;

Checkbox(
  value: _checked,
  onChanged: (bool? newValue) {
    setState(() {
      _checked = newValue!;
    });
  },
)
```

### o. `Radio`

* **Purpose:** Select one option from a group of mutually exclusive choices.
* **Example:**

```dart
String _selected = 'A';

Radio<String>(
  value: 'A',
  groupValue: _selected,
  onChanged: (String? newValue) {
    setState(() {
      _selected = newValue!;
    });
  },
)
```

### p. `DropdownButton`

* **Purpose:** Shows a drop-down menu for selecting a single value.
* **Example:**

```dart
String _selectedOption = 'One';

DropdownButton<String>(
  value: _selectedOption,
  items: ['One', 'Two', 'Three'].map((String val) {
    return DropdownMenuItem(
      value: val,
      child: Text(val),
    );
  }).toList(),
  onChanged: (String? newVal) {
    setState(() {
      _selectedOption = newVal!;
    });
  },
)
```

### q. `FloatingActionButton`

* **Purpose:** A circular button for promoting the primary action.
* **Example:**

```dart
FloatingActionButton(
  onPressed: () {
    // Primary action here
  },
  child: Icon(Icons.add),
  tooltip: 'Add',
)
```

### r. `Divider`

* **Purpose:** A horizontal line used to separate content.
* **Example:**

```dart
Column(
  children: [
    Text('Item 1'),
    Divider(color: Colors.grey),
    Text('Item 2'),
  ],
)
```

### s. `Chip`

* **Purpose:** A small label or tag with optional avatar and delete icon.
* **Example:**

```dart
Chip(
  avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('JD')),
  label: Text('John Doe'),
)
```

### t. `Tooltip`

* **Purpose:** Displays a message when a widget is long-pressed or hovered.
* **Example:**

```dart
Tooltip(
  message: 'Settings',
  child: IconButton(
    icon: Icon(Icons.settings),
    onPressed: () {},
  ),
)
```

### u. `CircularProgressIndicator`

* **Purpose:** A circular loading indicator.
* **Examples:**

```dart
// Indeterminate (spinning)
CircularProgressIndicator(),

// Determinate (shows 70% progress)
CircularProgressIndicator(value: 0.7),
```

---

## Conclusion

Flutter provides a powerful and flexible system of widgets to build beautiful and interactive apps. Layout widgets help structure your UI, while common widgets provide interactive elements for user engagement.

Explore the official [Flutter Widget Catalog](https://flutter.dev/widgets) for even more useful widgets!
