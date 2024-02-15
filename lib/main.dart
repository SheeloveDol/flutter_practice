import 'package:basic_first_app/pages/first.dart';
import 'package:basic_first_app/pages/second.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 182, 65, 15),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 182, 65, 15),
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Initialize the switch to false
  bool _toggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network("https://picsum.photos/250/250"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your username',
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SwitchListTile(
                  title: const Text('Notifications'),
                  value: _toggled,
                  onChanged: (bool value) {
                    setState(() => _toggled = value);
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                child: const Text('Submit'),
              ),
            ),

            // _____ADDS A BUTTON TO NAVIGATE TO THE NEXT PAGE

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const FirstPage()), // Must remember to import the FirstPage class
                  );
                },
                child: const Text('Simple: Next Page'),
              ),
            ),

            // _____ADDS A BUTTON TO NAVIGATE TO THE NEXT PAGE, But removes the `.of(context)`
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => const SecondPage()), // Must remember to import the SecondPage class
                  );
                },
                child: const Text('Simpler: Second Page'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
