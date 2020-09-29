import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class Dot extends StatelessWidget {
  const Dot({
    Key key,
    this.active = false,
    // this.index,
  }) : super(key: key);

  final bool active;
  // final int index;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: kAnimationDuration,
        margin: EdgeInsets.only(right: 5),
        height: 6,
        width: this.active ? 20 : 6,
        decoration: BoxDecoration(
          color: this.active ? kPrimaryColor : Colors.grey,
          borderRadius: BorderRadius.circular(3),
        ));
  }
}
