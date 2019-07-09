import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';

import './models/image_model.dart';
import './widgets/image_list.dart';

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
  int counter = 1;
  List<ImageModel> images = [];

  void fetchImage() async {
    var res = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = ImageModel.fromJson(json.decode(res.body));

    setState(() => images.add(imageModel));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
          title: Text('Images yo'),
        ),
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: Icon(Icons.add_a_photo),
        ),
      )
    );
  }
}
