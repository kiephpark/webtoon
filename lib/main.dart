
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
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          )
        ),
      ),
      home: const Scaffold(
        backgroundColor: Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LargeTitle(),
            ],
          ),
        ),
      ),
    );
  }
}

class LargeTitle extends StatelessWidget {
  const LargeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Click Counter",
      style: TextStyle(
        color: Theme.of(context).textTheme.displayLarge?.color,
        fontSize: 30,
      ),
    );
  }
}