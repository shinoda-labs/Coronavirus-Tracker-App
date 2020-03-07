import 'package:coronavirus_tracker/shared/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerComponent extends StatefulWidget {
  final double height;
  final double width;

  ShimmerComponent({Key key, @required this.height, @required this.width}) : super(key: key);

  @override
  _ShimmerComponentState createState() => _ShimmerComponentState();
}

class _ShimmerComponentState extends State<ShimmerComponent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Shimmer.fromColors(
        baseColor: Colors.grey[500],
        highlightColor: Colors.grey[200],
        child: Container(
          color: ColorsConstants.isDark
              ? ColorsConstants.darkPrimary
              : ColorsConstants.lightPrimary,
        ),
      ),
    );
  }
}