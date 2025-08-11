
import 'package:flutter/material.dart';
import 'screens/vehicles_screen.dart';

void main() {
  runApp(const FSOApp());
}

class FSOApp extends StatelessWidget {
  const FSOApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FSO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const Icon(Icons.build_circle, size: 80, color: Colors.blue),
            const SizedBox(height: 20),
            const Text('FSO', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
            const Text('Full Service Oversikt', style: TextStyle(fontSize: 16, color: Colors.black54)),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => const VehiclesScreen()));
                },
                child: const Text('Start'),
              ),
            ),
            const SizedBox(height: 40),
            const Text('© FSO 2025', style: TextStyle(color: Colors.black38)),
          ],
        ),
      ),
    );
  }
}
