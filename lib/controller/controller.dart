import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:mvc/Models/model.dart';

class Controller extends ControllerMVC {
  factory Controller() {
    if (_this == null) _this = Controller._();
    return _this;
  }

  static Controller _this = Controller._();
  Controller._();

  int get counter => Model.counter;
  void increment() {
    Model.increament();
  }

  void decrement() {
    Model.decrement();
  }
}
