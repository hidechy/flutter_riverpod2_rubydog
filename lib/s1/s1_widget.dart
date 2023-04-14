import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 's1.dart';

class MyS1Widget extends ConsumerWidget {
  const MyS1Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s1 = ref.watch(s1NotifierProvider);

    ref.listen(
      s1NotifierProvider,
      (previous, next) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$previousから$nextに変わった'),
          ),
        );
      },
    );

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
          Text('$s1'),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              final notifier = ref.read(s1NotifierProvider.notifier);
              notifier.updateState();
            },
            child: const Text('button'),
          ),
        ],
      ),
    );
  }
}
