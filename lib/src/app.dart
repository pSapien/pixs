import 'package:flutter/material.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

/*
 * Any time we define a custom widget. We have to define a build method.
 * The build method has three requirements:
 *   must be called build
 *   must return widget
 *   must take context<BuildContext> as an argument
 */
class AppState extends State<App> {
  int counter = 0;

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Images yo'),
      ),
      body: Text('$counter'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() => counter += 1);
        },
        child: Icon(Icons.add_a_photo),
      ),
    ));
  }
}

class ImageModel {
  int id;
  String url;

  /* use of multiple constructors */
  ImageModel(this.id, this.url);
  ImageModel.fromJson(parsedJson) {
    id = parsedJson.id;
    url = parsedJson.url;
  }
}
