import 'package:flutter/material.dart';

class NoInternetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size * 0.5;
    return Column(
      children: [
        Container(
          width: size.width,
          height: size.height,
          child: Image(
            image: AssetImage("assets/no_internet.png"),
          ),
        ),
        Text('Lost Internet Connection')
      ],
    );
  }
}
