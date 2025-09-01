import 'package:flutter/widgets.dart';

class BodytextMedium extends StatelessWidget {
  final String text;
  final Color color;
  const BodytextMedium({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 14,
        fontFamily: 'NunitoSans',
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
