import 'package:flutter/material.dart';
import 'package:requenescontainer/all_containers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Mis Contenedores'),
          ),
          body: const AllContainers()),
    );
  }
}
