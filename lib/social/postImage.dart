import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PostImageScreen extends StatefulWidget {
  @override
  _PostImageScreenState createState() => _PostImageScreenState();
}

class _PostImageScreenState extends State<PostImageScreen> {
  File _image;

  TextEditingController _captionInputController = TextEditingController();

  pickFromCamera() async {
    // ignore: deprecated_member_use
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  pickFromPhone() async {
    // ignore: deprecated_member_use
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Image"),
        actions: <Widget>[
          IconButton(
            tooltip: "Take from camera",
            icon: Icon(Icons.add_a_photo),
            onPressed: () {
              pickFromCamera();
            },
          ),
          IconButton(
            tooltip: "Select from phone",
            icon: Icon(Icons.add_photo_alternate),
            onPressed: () {
              pickFromPhone();
            },
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _image != null
                  ? Image.file(_image)
                  : Image(
                      image: AssetImage("assets/logos/placeholder.jpg"),
                    ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _captionInputController,
                  decoration: InputDecoration(
                    hintText: "Write Caption here",
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: Text("Done"),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
