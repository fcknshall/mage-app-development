import "package:flutter/material.dart";

class MyImageView extends StatelessWidget {
  final String _imgPath;

  const MyImageView(this._imgPath, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FittedBox(
            child: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: Image.asset(
            _imgPath,
            height: 300,
            width: 250,
            fit: BoxFit.contain,
          ),
        ))
      ],
    );
    /* margin: const EdgeInsets.symmetric(horizontal: 11),
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.asset(
            _imgPath,
            height: 15,
            width: 9,
          ),
        )); */
  }
}
