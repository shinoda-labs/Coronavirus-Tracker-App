import 'dart:ffi';

import 'package:coronavirus_tracker/shared/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerTileInfo extends StatelessWidget {
  Widget shimmer({double width, height}) {
    return SizedBox(
      width: width,
      height: height,
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

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            shimmer(width: MediaQuery.of(context).size.width / 3, height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: shimmer(width: 50.0, height: 50.0)
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: shimmer(width: MediaQuery.of(context).size.width / 2.5, height: 20.0)
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
