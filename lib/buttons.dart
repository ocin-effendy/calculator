import 'package:flutter/cupertino.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key,
      this.color,
      this.textColor,
      this.buttonText,
      this.buttontapped});
  final color;
  final textColor;
  final buttonText;
  final buttontapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            margin: const EdgeInsets.all(5),
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
