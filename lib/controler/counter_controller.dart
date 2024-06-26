import 'package:counter_app_with_getx_state_managment/headers.dart';

class CounterController extends GetxController {
  CounterController() {
    // _getValue();
    _getRCountVal();
  }

  // Reactive State management

  // final Counter _count = Counter();
  // int count = 0;

  final RCounter _rCounter = RCounter();
  RxInt rCount = 0.obs;

  // void _getValue() {
  //   count = _count.getCount;
  //   update();
  // }

  // void classicIncrement() {
  //   _count.setCount = ++count;
  //   _getValue();
  // }

  // void classicDecrement() {
  //   _count.setCount = --count;
  //   _getValue();
  // }

  void _getRCountVal() {
    rCount.value = _rCounter.getRCount;
  }

  void reactiveIncrement() {
    _rCounter.setRCount = rCount.value + 1;
    // rCount.value = rCount.value + 1;
    // rCount(rCount.value + 1);
    _getRCountVal();
  }

  void reactiveDecrement() {
    _rCounter.setRCount = rCount.value - 1;
    _getRCountVal();
  }
}
