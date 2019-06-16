import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'numberpicker.dart';

void main() {
  runApp(new ExampleApp());
}

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    return new MaterialApp(
      title: 'NumberPicker Example',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'NumberPicker Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentValue = 1;
  @override
  Widget build(BuildContext context) {
    double totalheight  = MediaQuery.of(context).size.height;

    return new Scaffold(
      body: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Container(
            height: totalheight,
            color: Colors.black,
            child: new NumberPicker.integer(
                initialValue: _currentValue,
                minValue: 1,
                maxValue: 11,
                horizontal: false,
                onChanged: (newValue) => setState(() => _currentValue = newValue)),
          ),
      Container(
        padding: EdgeInsets.only(top: 16,bottom: 16),
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Icon(Icons.search,color: Colors.black,size: 25,),
            Icon(Icons.star_border,color: Colors.black,size: 25,),
            Icon(Icons.add,color: Colors.black,size: 25,),
            Icon(Icons.notifications_none,color: Colors.black,size: 25,),
            Icon(Icons.settings,color: Colors.black,size: 25,),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      )
        ],
      ),
      /*     appBar: new AppBar(
        title: new Text(widget.title),
      ),*/
    );
  }
}
/*

Row(
mainAxisSize: MainAxisSize.min,
children: <Widget>[
Icon(Icons.search,color: Colors.black,),
Icon(Icons.star_border,color: Colors.black,),
Icon(Icons.add,color: Colors.black,),
Icon(Icons.notifications_none,color: Colors.black,),
Icon(Icons.settings,color: Colors.black,),
],
crossAxisAlignment: CrossAxisAlignment.stretch,
mainAxisAlignment: MainAxisAlignment.center,*/
