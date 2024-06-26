import 'package:counter_app_with_getx_state_managment/headers.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController c = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter App With GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // GetBuilder<CounterController>(
            //   builder: (getX) => Text("Classic Tap: ${getX.count}"),
            // ),
            // GetX<CounterController>(
            //   builder: (getX) => Text("Classic Tap: ${getX.count}"),
            // ),
            Obx(
              () => Text(
                "Obx Tap: ${c.rCount.value.toString()}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              c.reactiveIncrement();
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              c.reactiveDecrement();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: (value) {
      //     value == 0 ? c.classicIncrement() : c.classicDecrement();
      //   },
      //   items: const [
      //     BottomNavigationBarItem(
      //       backgroundColor: Colors.blue,
      //       icon: Icon(Icons.add),
      //       label: 'Classic Increment',
      //     ),
      //     BottomNavigationBarItem(
      //       backgroundColor: Colors.blue,
      //       icon: Icon(Icons.remove),
      //       label: 'Classic Decrement',
      //     ),
      //   ],
      // ),
    );
  }
}
