import 'package:crud_frontend/get.dart';
import 'package:crud_frontend/post.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "APP",
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const POST();
                      },
                    ),
                  );
                },
                child: const Text("POST")),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const GET();
              },));
            }, child: const Text("GET")),
            ElevatedButton(onPressed: () {}, child: const Text("UPDATE")),
            ElevatedButton(onPressed: () {}, child: const Text("DELETE"))
          ],
        ),
      ),
    );
  }
}
