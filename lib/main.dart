import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Orientation builder",
      home: OrientationList(title: "Orientation builder",),
    );
  }
}

class OrientationList extends StatelessWidget {
  final title;

  const OrientationList({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: OrientationBuilder(
        builder: (context,orientation){
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2:3,
            children: List.generate(100, (index){
              return Center(child: Text(
                "Item $index",
                style: Theme.of(context).textTheme.headline,
              ),);
            }),
          );
        },
      ),
    );
  }
}