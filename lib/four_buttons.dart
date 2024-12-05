import 'package:flutter/material.dart';
import 'action.dart';

class FourButtons extends StatelessWidget {
  final Function(OPERATION operation) incDnc;

  const FourButtons({super.key, required this.incDnc});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () {
            // print('increment:');

            
            incDnc(OPERATION.sqr);
          },
          child: const Icon(Icons.looks_two_outlined),
        ),
        FloatingActionButton(
          onPressed: () {
            incDnc(OPERATION.sqrt);
          },
          child: const Icon(Icons.two_k_outlined),
        ),
        FloatingActionButton(
          onPressed: () {
            incDnc(OPERATION.dnc);
          },
          child: const Icon(Icons.remove),
        ),
        FloatingActionButton(
          onPressed: () {
            incDnc(OPERATION.inc);
          },
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
