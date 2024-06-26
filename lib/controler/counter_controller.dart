import 'package:counter_app_with_getx_state_managment/headers.dart';

class CounterController extends GetxController {
  CounterController() {
    _getValue();
  }

  final Counter _count = Counter();
  int count = 0;

  void _getValue() {
    count = _count.getCount;
    update();
  }

  void increment() {
    _count.setCount = ++count;
    _getValue();
  }

  void decrement() {
    _count.setCount = --count;
    _getValue();
  }
}
