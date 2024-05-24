import 'package:flutter/material.dart';

/// Flutter code sample for [CustomMultiChildLayout].

class CustomMultiChildLayoutApp extends StatelessWidget {
  const CustomMultiChildLayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomMultiChildLayoutExample(),
      ),
    );
  }
}

class CustomMultiChildLayoutExample extends StatelessWidget {
  const CustomMultiChildLayoutExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomMultiChildLayout(
      delegate: MyLayoutDelegate(),
      children: [
        LayoutId(
          id: 'topLeft',
          child: Container(color: Colors.red, width: 100, height: 100),
        ),
        LayoutId(
          id: 'bottomRight',
          child: Container(color: Colors.amber, width: 100, height: 100),
        ),
      ],
    );
  }
}

class MyLayoutDelegate extends MultiChildLayoutDelegate {
MyLayoutDelegate({this.color = Colors.white, this.overlay =20.003, this.numb = 2, });

  final Color color;
  final double overlay;
  final int numb;
  @override
  void performLayout(Size size) {
    if (hasChild('topLeft')) {
      layoutChild(
        'topLeft',
        BoxConstraints.tight(
          const Size(100, 100),
        ),
      );
      positionChild('topLeft', const Offset(0, 0));
    }
    if (hasChild('bottomRight')) {
      final bottomRightSize = layoutChild(
        'bottomRight',
        BoxConstraints.tight(
          const Size(
            100,
            100,
          ),
        ),
      );
      positionChild(
        'bottomRight',
        Offset(
          size.width - bottomRightSize.width,
          size.height - bottomRightSize.height,
        ),
      );
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return false;
  }
}
