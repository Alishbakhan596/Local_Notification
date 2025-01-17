import 'package:flutter/material.dart';
import 'package:notification/services/notifi_service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show notifications'),
          onPressed: () {
            NotificationService()
                .showNotification(title: 'Sample title', body: 'It works!');
          },
        ),
      ),
    );
  }
}
