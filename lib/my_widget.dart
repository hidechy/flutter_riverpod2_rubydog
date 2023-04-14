import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 's1/s1_widget.dart';
import 's2/s2_widget.dart';
import 's3/s3_widget.dart';
import 's4/s4_widget.dart';

class MyWidget extends ConsumerWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const SizedBox(height: 50),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyS1Widget(),
              ),
            );
          },
          child: const Text('s1 open'),
        ),
        const SizedBox(height: 50),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyS2Widget(),
              ),
            );
          },
          child: const Text('s2 open'),
        ),
        const SizedBox(height: 50),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyS3Widget(),
              ),
            );
          },
          child: const Text('s3 open'),
        ),
        const SizedBox(height: 50),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyS4Widget(),
              ),
            );
          },
          child: const Text('s4 open'),
        ),
      ],
    );
  }
}
