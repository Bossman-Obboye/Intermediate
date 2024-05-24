import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Animations extends StatefulWidget {
  const Animations({super.key});

  @override
  State<Animations> createState() => _AnimationsState();
}

class _AnimationsState extends State<Animations>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3000));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  bool bookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (bookmarked == false) {
              bookmarked = true;
              _controller.repeat();
            } else { 
              bookmarked = false;
              _controller.reverse();
            }
          },
          child: Lottie.asset(
            'assets/animations/bookmark.json',
            controller: _controller,
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
