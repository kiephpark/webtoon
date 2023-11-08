
import 'package:flutter/material.dart';

void main(){
  return runApp(
    const App()
  );
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<int> counters = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            children: [
              const Text(
                "Click Counter",
                style: TextStyle(fontSize: 30),
              ),
              for(var x in counters) Text('$x', style: const TextStyle(fontSize: 40),),
              IconButton(
                iconSize: 40,
                onPressed: onPressed, 
                icon: const Icon(Icons.add_rounded),
                ),
            ],
          ),
        ),
      ),
    );
  }

  void onPressed() {
    // setState(() {
    //   counters.add(counters.length);
    // });
    counters.add(counters.length);
    print(counters);
  }
}