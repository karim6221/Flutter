import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({required this.switchScreen, super.key});
  final void Function() switchScreen;
  @override
  build(context) {
    return SizedBox(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/image/start.jpg",
              width: 300,
              //color: Color.fromARGB(255, 221, 205, 205),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'lets start',
              style: TextStyle(
                fontSize: 24,
                color: Color.fromARGB(255, 3, 3, 3),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: switchScreen,
              icon: const Icon(Icons.arrow_right),
              label: const Text("Go Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
/*const Center(
        child: Text(
      "karim",
    )); */
