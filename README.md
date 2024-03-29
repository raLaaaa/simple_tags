# simple_tags

[![Flutter](https://img.shields.io/badge/Made%20with-Flutter-blue.svg)](https://flutter.dev/)
[![MIT Licence](https://badges.frapsoft.com/os/mit/mit.svg?v=103)](https://opensource.org/licenses/mit-license.php)
[![pub package](https://img.shields.io/pub/v/simple_tags.svg)](https://pub.dev/packages/simple_tags)
[![pub points](https://img.shields.io/pub/points/simple_tags?logo=dart)](https://pub.dev/packages/simple_tags/score)

A Flutter plugin for displaying simple string based tags inside a wrap.
The plugin is kept extremely simple and straight forward.

## Usage
To use this plugin, add `simple_tags` as a [dependency in your pubspec.yaml file](https://flutter.dev/platform-plugins/).

```
dependencies:
  simple_tags: "0.0.6"
```

### Example

You can specify the `content` of `SimpleTags` by injecting a list of strings.
This will create a basic tag layout without styling.

The example below shows some styling options like for example an altered `TextStyle` and an altered `BoxDecoration` of the tag container.
You can adapt the tag text as well as the tag container toward your needs.
Some basic callsbacks are also provided for tapping or pressing a tag container.

``` dart
class SimpleTagExample extends StatefulWidget {
  SimpleTagExample({Key key, this.title}) : super(key: key);

  final String title;
  final List<String> content = [
    'Apple',
    'Banana',
    'Orange',
    'Pomme',
    'Carambola',
    'Cherries',
    'Date Fruit',
    'A Fruit with a really long name',
    'A Fruit with a really, really, really, really, very, very, very, very long name',
    'Durian',
    'Grapefruit'
  ];

  @override
  _SimpleTagExampleState createState() => _SimpleTagExampleState();
}

class _SimpleTagExampleState extends State<SimpleTagExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SimpleTags(
        content: widget.content,
        wrapSpacing: 4,
        wrapRunSpacing: 4,
        onTagPress: (tag) {print('pressed $tag');},
        onTagLongPress: (tag) {print('long pressed $tag');},
        onTagDoubleTap: (tag) {print('double tapped $tag');},
        tagContainerPadding: EdgeInsets.all(6),
        tagTextStyle: TextStyle(color: Colors.deepPurple),
        tagIcon: Icon(Icons.clear, size: 12),
        tagContainerDecoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(139, 139, 142, 0.16),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(1.75, 3.5), // c
            )
          ],
        ),
      ),
    );
  }
}
```

![image](https://user-images.githubusercontent.com/12799722/229825332-17ed2ef6-080a-43ec-a481-5528f553e47a.png)

## Contributing
Thanks for your interest! Do not hesitate to open an issue if you have a question, feedback or found something that is not working like it should.

Pull requests for improvements of the library or it's documentation are also highly appreciated.

## Licenses
This library and its content is released under the [MIT License](https://choosealicense.com/licenses/mit/).
