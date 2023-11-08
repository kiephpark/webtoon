
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
  bool isShowTitle = true;

  @override
  void initState() {
    super.initState();
    print("initState!!");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  Widget build(BuildContext context) {
    print("build!!");
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          )
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isShowTitle ? const LargeTitle() : const Text("No Display"),
              IconButton(onPressed: onPressed, icon: const Icon(Icons.toggle_off_outlined))
            ],
          ),
        ),
      ),
    );
  }

  void onPressed() {
    setState(() {
      isShowTitle = !isShowTitle;
    });
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