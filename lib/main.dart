import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showTitle = true;

  void showToggle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(color: Colors.red),
        ),
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? const MyWidget() : const Text("nothing"),
              IconButton(
                onPressed: showToggle,
                icon: const Icon(Icons.remove_red_eye_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({
    super.key,
  });

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    // build전에 호출됨
    // 초기화위해 사용되지만 굳이 사용x
    // TODO: implement initState
    super.initState();
    print("init");
  }

  @override
  void dispose() {
    // 위젯이 제거될때 호출
    // TODO: implement dispose
    super.dispose();
    print("dispose");
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      "My Large Title",
      style: TextStyle(
          fontSize: 30, color: Theme.of(context).textTheme.titleLarge?.color),
    );
  }
}
