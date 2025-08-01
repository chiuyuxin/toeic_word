import 'package:flutter/material.dart';
import 'package:pass_toeic/Data/WordData.dart';
import 'package:pass_toeic/ui/PageA.dart';
import 'package:pass_toeic/ui/PageB.dart';
import 'package:pass_toeic/ui/PageC.dart';
import 'package:pass_toeic/ui/PageD.dart';
import 'package:pass_toeic/ui/SplashPage.dart';

//單純的容器容納四個page
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pass TOEIC',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const SplashPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(
      child: PageA(
        words: [
          WordData(english: 'english', chinese: 'chinese', sentence: ''),
          WordData(english: 'english', chinese: 'chinese', sentence: ''),
          WordData(english: 'english', chinese: 'chinese', sentence: ''),
          WordData(english: 'english', chinese: 'chinese', sentence: ''),
          WordData(english: 'english', chinese: 'chinese', sentence: ''),
          WordData(english: 'english', chinese: 'chinese', sentence: ''),
          WordData(english: 'english', chinese: 'chinese', sentence: ''),
          WordData(english: 'english', chinese: 'chinese', sentence: ''),
        ],
      ),
    ),
    Center(child: PageB()),
    Center(child: PageC()),
    Center(child: PageD()),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'A'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'B'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'C'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'D'),
        ],
      ),
    );
  }
}
