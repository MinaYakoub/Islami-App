import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 100),
          child: Center(
              child: Image.asset(
            'assets/images/radio_image.png',
            width: 200,
            height: 200,
          )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.skip_previous,
                  color: Theme.of(context).primaryColor,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_arrow,
                  color: Theme.of(context).primaryColor,
                  size: 30
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.skip_next,
                  color: Theme.of(context).primaryColor,
                ))
          ],
        )
      ],
    );
  }
}
