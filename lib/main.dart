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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: IntroductionToFlutter(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class IntroductionToFlutter extends StatefulWidget {
  @override
  IntroductionToFlutterState createState() => IntroductionToFlutterState();
}

class IntroductionToFlutterState extends State<IntroductionToFlutter> {
  String message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Introduction to Flutter',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Keihle Dianne Pascual',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'PDC03 - Mobile Programming',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    message = 'Welcome to Mobile Application Development!';
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, 
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24, vertical: 12), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), 
                  ),
                  elevation: 5, 
                ),
                child: const Text(
                  'Show Message',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                message,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.green,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}