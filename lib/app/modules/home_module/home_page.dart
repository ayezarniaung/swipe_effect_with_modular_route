import 'package:flip_card/app/modules/home_module/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modular and Swipper'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Modular.to.navigate('/flip');
              },
              child: const Text('Go to Flipper page'),
            ),
            ElevatedButton(
              onPressed: () {
                Modular.to.navigate('/swipe');
              },
              child: const Text('Go to Swipper page'),
            ),
          ],
        ),
      ),
    );
  }
}
