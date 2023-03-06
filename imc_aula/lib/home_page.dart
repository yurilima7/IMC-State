import 'package:flutter/material.dart';
import 'package:imc_aula/setState/imc_setstate.dart';
import 'package:imc_aula/valueNotifier/imc_valuenotifier.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _goToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => page,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _goToPage(context, const ImcSetstate()),
              child: const Text('SetState'),
            ),
            ElevatedButton(
              onPressed: () => _goToPage(context, const ImcValueNotifier()),
              child: const Text('ValueNotifier'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('ChangeNotifier'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Bloc Pattern (Streams)'),
            ),
          ],
        ),
      ),
    );
  }
}
