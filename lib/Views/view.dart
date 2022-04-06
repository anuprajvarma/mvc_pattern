import 'package:flutter/material.dart';

class View extends StatefulWidget {
  View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  int c = 0;

  void increment() {
    setState(() {
      c++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('MVC architec'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('0'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                      onPressed: () {}, child: Icon(Icons.add)),
                  FloatingActionButton(
                      onPressed: () {}, child: Icon(Icons.remove)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
