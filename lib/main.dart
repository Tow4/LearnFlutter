import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

void doSomething() {
  print("Testing Button");
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed:doSomething, icon: const Icon(Icons.menu)),
          backgroundColor: Colors.blue,
          title: const Text("Profile")),
        body: Center(
            child: const Column(
              children: [
                SizedBox(height: 20),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxyues6OvyfnG9-W10CrerwhFPjItZ-v8BoA2u1av-nQ&s"),
                ),
                Text("My dashboard", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ]
            ),
          ),
        )
    );
  }
}