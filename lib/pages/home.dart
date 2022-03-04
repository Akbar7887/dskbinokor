import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'PhotoPage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController logincontroller = TextEditingController();
  TextEditingController passwordControler = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("DSK BINOKOR"),
        ),
        body: BodyContainer());
  }

  Widget BodyContainer() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.blue),
              child: Image.asset('assets/logo.png')),
          SizedBox(
            height: 20,
          ),
          Container(
              child: Text(
            'Вход',
            style: TextStyle(fontSize: 30, color: Colors.blue),
          )),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: TextFormField(
                    controller: logincontroller,
                    decoration: InputDecoration(
                        hintText: "Пользователь",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide())),
                  ),
                  padding: EdgeInsets.only(left: 30, right: 30),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    controller: passwordControler,
                    decoration: InputDecoration(
                        hintText: "Пароль",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide())),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 70, right: 70),
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoPage()));
              },
              child: Text(
                'Вход',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Divider(),
          Container(
            alignment: Alignment.center,
            child: Text("Телефоны для справки!"),
          )
        ],
      ),
    );
  }
}
