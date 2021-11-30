import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]).then((_) {
    runApp(new MyApp());
  });
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Appbar'),),
      body: Wrapper(),
    );
  }
}
class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);



  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {


  @override

  Widget build(BuildContext context) {
    var angle = 0;
    var orientation = MediaQuery.of(context).orientation;
    (orientation == Orientation.landscape) ? angle =-60: angle = 0;
    return
      RotationTransition(
          turns: AlwaysStoppedAnimation(angle/360),
          child: Image(image: AssetImage('assets/images/a.png')));
  }
}
