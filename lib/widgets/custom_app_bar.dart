import 'package:flutter/material.dart';
import '/config/palette.dart';
import 'package:quarantips/screens/screens.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.primaryColor,
      elevation: 0.0,
     
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.person_outline_sharp),
          iconSize: 28.0,
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
