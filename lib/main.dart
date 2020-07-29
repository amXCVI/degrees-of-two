import 'package:flutter/material.dart';
import 'dart:math';

class MyBody extends StatefulWidget {
  @override
  createState() => new MyBodyState();
}

class MyBodyState extends State<MyBody> {
  List<int> _array = [];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(itemBuilder: (context, i){
      print('num $i : нечетное = ${i.isOdd}');

      if(i.isOdd) return new Divider();

      final int index = i ~/ 2;

      print('index $index');
      print('length ${_array.length}');

      if (index >= _array.length) _array.addAll([index, index + 1, index + 2]);

      return new ListTile(
          title: new Text('2^$index: ${pow(2, index)}', style: new TextStyle(fontSize: 24))
      );

    });
  }
}

void main() =>  runApp(
    new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(body: new Center(child: new MyBody(),))
    )
);