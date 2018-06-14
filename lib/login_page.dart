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
  String _errorText;

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

    final _imageContainer = Container(
      margin: const EdgeInsets.only(top: 80.0),
      padding: const EdgeInsets.only(bottom: 96.0),
      child: Image(
        image: AssetImage('images/logo.png'),
        width: 200.0,
        height: 40.0,
        fit: BoxFit.contain,
      ),
    );


    final _accountContainer = Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: TextField(
            controller: _account,
            onChanged: (String text) {
              setState(() {
                if (text != "666") {
                  _errorText = "干，写的什么玩意儿";
                } else {
                  _errorText = null;
                }
              });
            },
            decoration: InputDecoration(
                hintText: "请输入帐号",
                errorText: _errorText,
                hintStyle: const TextStyle(color: Colors.blueAccent)),
            style: Theme.of(context).textTheme.display1));

    final _passwordContainer = Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: TextField(
            controller: _account,
            autofocus: true,
            decoration: const InputDecoration(
                hintText: "请输入密码",
                hintStyle: const TextStyle(color: Colors.blueAccent)),
            style: const TextStyle(color: Colors.blueGrey)));

    final _list = ListView(
      children: <Widget>[
        _imageContainer,
        _accountContainer,
        _passwordContainer
      ],
    );

    final _stack = Stack(
      alignment: AlignmentDirectional.topCenter,
      children: <Widget>[
        _imageContainer,
        _accountContainer,
        _passwordContainer
      ],
    );

    final _column = Column(
      children: <Widget>[
        _imageContainer,
        _accountContainer,
        _passwordContainer
      ],
    );

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: _column);
  }

  void _updateAccount(String account) {}
}
