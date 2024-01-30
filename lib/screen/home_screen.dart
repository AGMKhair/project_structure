import 'package:flutter/material.dart';
import 'package:project_structure/resourse/util/string_dictionary.dart';

/**
 *  PROJECT_NAME:-  Project
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 30/1/24
 */
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringDictionary.APP_NAME),
      ),
      body: Container(
        child: Text(''),
      ),
    );
  }
}
