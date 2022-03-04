import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PhotoPage extends StatefulWidget {
  const PhotoPage({Key? key}) : super(key: key);

  @override
  _PhotoPageState createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  String dropdownAdress = 'Ассалом';
  String dropdownDom = 'Дом-1';
  var imagePassport;

  List<DropdownMenuItem<String>> itemAdress = [
    'Ассалом',
    'Кибрай',
    'Сохил бойи',
    'Olmazor',
    'Jizzax',
  ].map((String el) {
    return DropdownMenuItem<String>(
      child: Text(el),
      value: el,
    );
  }).toList();

  List<DropdownMenuItem<String>> itemdom = [
    'Дом-1',
    'Дом-2',
    'Дом-3',
    'Дом-4',
    'Дом-5',
  ].map((String el) {
    return DropdownMenuItem<String>(
      child: Text(el),
      value: el,
    );
  }).toList();

  @override
  void initState() {
    super.initState();

    // item = itemAdress[0].value!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DSK BINOKOR"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: Wrap(
                  children: [
                    Text("Передача данные на сервер!",
                        style: TextStyle(fontSize: 20, color: Colors.blue[900]))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                // width: MediaQuery.of(context).size.width,
                child: DropdownButton<String>(
                  borderRadius: BorderRadius.circular(10),
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  isExpanded: true,
                  hint: Text("Адрес"),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownAdress = newValue!;
                    });
                  },
                  items: itemAdress,
                  value: dropdownAdress,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                // width: MediaQuery.of(context).size.width,
                child: DropdownButton<String>(
                  borderRadius: BorderRadius.circular(10),
                  isExpanded: true,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  hint: Text("Дом"),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownDom = newValue!;
                    });
                  },
                  items: itemdom,
                  value: dropdownDom,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 150,
                        child: Card(
                          child: IconButton(
                            icon: Icon(
                              Icons.photo_camera,
                              size: 50,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              pickImage(ImageSource.camera);
                            },
                          ),
                        ),
                      ),
                      Expanded(
                          child: Container(
                        height: 150,
                        child: Card(
                            child: (imagePassport != null)
                                ? Image.file(imagePassport)
                                : Icon(Icons.image, size: 100,color: Colors.red,)),
                      )),
                    ]),
              ),
              Expanded(child: Text('rwlgkjer')),
            ],
          ),
        ));
  }

  Future pickImage(ImageSource source) async {
    XFile? _imageFile = await ImagePicker().pickImage(source: source);
    if (_imageFile == null) return;

    setState(() {
      imagePassport = File(_imageFile.path);
    });
  }
}
