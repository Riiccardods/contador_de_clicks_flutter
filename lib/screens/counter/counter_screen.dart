import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}


class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter',
                style: const TextStyle(
                    fontSize: 190, fontWeight: FontWeight.w100)),

            // Text('Click${clickCounter == 1 ? '':'s'}',

            if (clickCounter == 1)
              const Text('Click',
                  style: TextStyle(
                    fontSize: 25,
                  ))
            else
              const Text('Clicks',
                  style: TextStyle(
                    fontSize: 25,
                  )),

             Container(
              height: 220.0,
              color: Color.fromARGB(0, 248, 4, 4), // Espaço de 20 pixels de altura
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCounter = clickCounter + 1;
          });
        },
        child: const Icon(Icons.plus_one),
      ), // FloatingActionButton
    );
  }
}
