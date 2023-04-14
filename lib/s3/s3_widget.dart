import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 's3.dart';

class MyS3Widget extends ConsumerWidget {
  const MyS3Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s3 = ref.watch(s3NotifierProvider);

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
              ref.read(s3NotifierProvider.notifier).updateState();
            },
            child: const Text('button'),
          ),
          const SizedBox(height: 20),
          s3.when(
            data: (data) {
              return Text(data);
            },
            error: (error, basho) {
              return Text('エラー　$error');
            },
            loading: () {
              return const Text('準備中');
            },
          ),
        ],
      ),
    );
  }
}
