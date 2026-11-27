import "package:flutter/material.dart";

import "block.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Declaring a function
  void doSomething() {
    print("Testing Button");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: doSomething,
            icon: const Icon(Icons.menu),
          ),
          backgroundColor: Colors.blue,
          title: const Text("Profile"),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxyues6OvyfnG9-W10CrerwhFPjItZ-v8BoA2u1av-nQ&s",
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "My dashboard",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.school, size: 17, color: Colors.orange),
                    SizedBox(width: 4),
                    Text(
                      "Student",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Block(
                    "Attendance",
                    Icons.check_circle,
                    colour: Colors.amber.shade100,
                    value: "80%",
                  ),
                  const SizedBox(width: 16),
                  Block(
                    "CGPA",
                    Icons.star,
                    colour: Colors.amber.shade100,
                    value: "3.8",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
