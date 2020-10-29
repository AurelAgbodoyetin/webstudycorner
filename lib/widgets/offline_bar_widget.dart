import 'package:flutter/material.dart';

class OfflineBar extends StatelessWidget {
  final Widget child;
  final bool connected;

  const OfflineBar({Key key, this.child, this.connected}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size * 0.5;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          child,
          Positioned(
            left: 0.0,
            right: 0.0,
            height: 2 * size.height,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              color: connected ? null : Colors.white,
              child: connected
                  ? null
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Image(
                            image: AssetImage("assets/no_internet.png"),
                          ),
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Text('Lost Internet Connection'),
                        SizedBox(
                          height: 20.0,
                        ),
                        CircularProgressIndicator(
                          strokeWidth: 2.0,
                        )
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
