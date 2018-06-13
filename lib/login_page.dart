import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;


  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _account;


  @override
  void initState() {
    super.initState();
    _account = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 80.0),
            child: Image(
              image: AssetImage('images/logo.png'),
              width: 200.0,
              height: 40.0,
              fit: BoxFit.contain,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 96.0),
            child: Divider(
              color: Colors.cyanAccent,
            ),
          ),
          Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: TextField(
                  controller: _account,
                  decoration: const InputDecoration(
                      hintText: "请输入帐号",
                      hintStyle: const TextStyle(color: Colors.lightGreen)),
                  style: const TextStyle(color: Colors.blueGrey))),
          Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: TextField(
                  controller: _account,
                  decoration: const InputDecoration(
                      hintText: "请输入密码",
                      hintStyle: const TextStyle(color: Colors.cyanAccent)),
                  style: const TextStyle(color: Colors.blueGrey))),
        ],
      ),
    );
  }

  void _updateAccount(String account) {}
}
