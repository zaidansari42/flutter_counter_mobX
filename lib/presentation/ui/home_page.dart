import 'package:flutter/material.dart';
import 'package:flutter_counter_mobx/logic/counter.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

final counter = Counter();

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Number of Count: ',
              style: TextStyle(fontSize: 25),
            ),
            Observer(
                builder: (_) => Text(
                      '${counter.count}',
                      style: const TextStyle(fontSize: 30),
                    ))
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: counter.increment,
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              onPressed: counter.decrement,
              child: const Icon(Icons.remove),
            )
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
