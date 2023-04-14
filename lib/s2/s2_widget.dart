import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 's2.dart';

class MyS2Widget extends ConsumerWidget {
  const MyS2Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s2 = ref.watch(s2NotifierProvider);

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            children: [
              Container(),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              ref.read(s2NotifierProvider.notifier).updateState();
            },
            child: const Text('button'),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: Text(s2[index]),
                );
              },
              itemCount: s2.length,
            ),
          ),
        ],
      ),
    );
  }
}
