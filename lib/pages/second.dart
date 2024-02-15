import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Page")),
      // IF WE WANT TO ADD OUR OWN BACK BUTTON
      body: Center( 
        child: Column(
        children: [ 
         const Text("This is the second page!"),
         ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("Go back!"),
        ),
        ],
      ),
    ),
    );
  }
}
