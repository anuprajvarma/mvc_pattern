import 'package:flutter/material.dart';
import 'package:mvc/controller/controller.dart';

class View extends StatefulWidget {
  View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  final Controller _controller = Controller();

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
              Text(
                _controller != null ? '${_controller.counter}' : "0",
                style: TextStyle(fontSize: 25),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          _controller.increment();
                        });
                      },
                      child: Icon(Icons.add)),
                  FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          _controller.decrement();
                        });
                      },
                      child: Icon(Icons.remove)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
