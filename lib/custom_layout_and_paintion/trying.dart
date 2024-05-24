import 'package:flutter/material.dart';

/// I have experimented with several widgets and commented it.
/// [Check] each from the [bottom.to.top] direction.
/// 1. [Directionality] widgets;
/// 2. [Wrap] widgets;

class Trying extends StatelessWidget {
  const Trying({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: List.generate(6, (index) {
          return Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: Text('Item $index'),
          );
        }),
      )

          //     Wrap(
          //   children: List.generate(6, (index) {
          //     return Container(
          //       width: 100,
          //       height: 100,
          //       color: Colors.blue,
          //       child: Text('Item $index'),
          //     );
          //   }),
          // )

          /// Flutter code sample for [CustomMultiChildLayout].

          //  Directionality(
          //   textDirection: TextDirection.rtl,
          //   child: Text(
          //     'Trying',
          //     style: TextStyle(fontSize: 25, color: Colors.red),
          //   ),
          // ),
          ),
    );
  }
}
