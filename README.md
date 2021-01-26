# shaped_buttons

Language: [English](README.md)

Shaped Buttons is a flutter library that allows you to create parallelogram shaped featured buttons.

![](https://github.com/ibtihaajKhurram/shaped_buttons/blob/master/assets/screenshots/Screenshot_01.jpg)

- [shaped_buttons](#shapedbuttons)
  - [How to use it.](#how-to-use-it)
  - [parameters](#parameters)

##  How to use it.

the default effects plain parallelogram
```dart
  ParallalogramButton(
                child: Text(
                  "Regular Button",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  print('Button Pressed');
                },
              ),
```

and you can also define custom properties.
```dart
 ParallalogramButton(
                width: 200,
                borderColor: Colors.black,
                buttonColor: Colors.yellow[700],
                borderWdth: 5,
                child: Text(
                  "Button with border",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  print('Button Pressed');
                },
              ),
```


## parameters

| parameter                  | description                                                                           | default                                                                                                                                                                               |
| -------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| child                       | child widget (usually a Text widget)                                                                   | 	This is a required parameter                                                                                                                                                                                  |
| width                       | width of button                                                                   | 120.0                                                                                                                                                                                  |
| height                       | height of button                                                                   | 50.0                                                                                                                                                                                  |
| margin                       | Margin around the button                                                                   | EdgeInsets.only(left: 1, right: 1)                                                                                                                                                                                  |
| borderWidth                       | Stroke of border around button                                                                   | 1                                                                                                                                                                                 |
| borderColor                       | color of border                                                                   | color of button                                                                                                                                                                                 |
| boxShadow                       | shadow of button                                                                   | This is an optional parameter                                                                                                                                                                                   |
| buttonColor                       | color of button                                                                   | Colors.blue                                                                                                                                                                                  |
| onPressed                       | Void call-back of button                                                                  | override this for listening the call back when button is pressed                                                                                                                                                                                  |

[more detail](https://github.com/ibtihaajKhurram/shaped_buttons/tree/master/example/lib)
