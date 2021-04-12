# simple_tags

[![pub package](https://img.shields.io/pub/v/url_launcher.svg)](https://pub.dev/packages/simple_tags)

A Flutter plugin for displaying simple string based tags inside a wrap.
The plugin is kept extremely simple and straight forward.

## Usage
To use this plugin, add `simple_tags` as a [dependency in your pubspec.yaml file](https://flutter.dev/platform-plugins/).

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

![image](https://user-images.githubusercontent.com/12799722/114385355-3a430a00-9b90-11eb-9136-f4fab5294290.png)

## Contributing
Thanks for your interest! Do not hesitate to open an issue if you have a question, feedback or found something that is not working like it should.

Pull requests for improvements of the library or it's documentation are also highly appreciated.

## Licenses
This library and its content is released under the [MIT License](https://choosealicense.com/licenses/mit/).
