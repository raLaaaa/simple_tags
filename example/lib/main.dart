import 'package:flutter/material.dart';
import 'package:simple_tags/simple_tags.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Tags Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SimpleTagExample(title: 'Simple Tags Demo'),
    );
  }
}

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
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
