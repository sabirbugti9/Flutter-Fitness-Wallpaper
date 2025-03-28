import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          _imagePart(),
          _gradientColor(),
          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _whereText(),
                const SizedBox(
                  height: 12,
                ),
                _thereText(),
                const SizedBox(
                  height: 24,
                ),
                _getStartedButton(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _getStartedButton(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          'Get Started',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Text _thereText() {
    return const Text(
      'There is no instant way to a healthy life',
      style: TextStyle(
        color: Colors.white70,
        fontSize: 16,
      ),
    );
  }

  Text _whereText() {
    return const Text(
      'Wherever You Are\nHealth Is Number One',
      style: TextStyle(
        color: Colors.white,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Container _gradientColor() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Colors.black.withOpacity(0.7),
          ],
        ),
      ),
    );
  }

  Image _imagePart() {
    return Image.asset(
      'assets/images/workout.jpg',
      fit: BoxFit.cover,
    );
  }
}
