// File: lib/main.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'screens/setstate_counter.dart';
import 'screens/provider_counter.dart';
import 'screens/getx_counter.dart';
import 'screens/riverpod_counter.dart';
import 'screens/bloc_counter.dart';

void main() {
  runApp(const ProviderScope(child: StateMateApp()));
}

class StateMateApp extends StatelessWidget {
  const StateMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StateMate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StateMate')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SetStateCounter()),
            ),
            child: const Text('SetState Counter'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ProviderCounter()),
            ),
            child: const Text('Provider Counter'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const GetXCounter()),
            ),
            child: const Text('GetX Counter'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const RiverpodCounter()),
            ),
            child: const Text('Riverpod Counter'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const BlocCounter()),
            ),
            child: const Text('BLoC Counter'),
          ),
        ],
      ),
    );
  }
}
