import 'package:flutter/material.dart';

class AnimatedScreenTwo extends StatefulWidget {
  const AnimatedScreenTwo({super.key});

  @override
  State<AnimatedScreenTwo> createState() => _AnimatedScreenTwoState();
}

class _AnimatedScreenTwoState extends State<AnimatedScreenTwo> {
  @override
  Widget build(BuildContext context) {
    final double topPadding = MediaQuery.of(context).padding.top;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromRGBO(145, 131, 222, 1),
            Color.fromRGBO(160, 148, 227, 1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: topPadding),
              const SizedBox(height: 10),
              const AnimatedImage(),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimatedImage extends StatefulWidget {
  const AnimatedImage({super.key});

  @override
  State<AnimatedImage> createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(
      seconds: 3,
    ),
  )..repeat(
    reverse: true,
  );
  late final Animation<Offset> _animation =
      Tween(begin: Offset.zero, end: const Offset(0, 0.08))
          .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Image.asset(
        'assets/images/person_on_rocket.png',
        width: 300,
      ),
    );
  }
}
