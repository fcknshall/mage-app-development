import "package:flutter/material.dart";

class MyImageView extends StatelessWidget {
  final String imgPath;

  const MyImageView(this.imgPath, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 250,
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.asset(
            imgPath,
          ),
        ));
  }
}
