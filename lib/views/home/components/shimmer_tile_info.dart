import 'package:coronavirus_tracker/views/home/components/shimmer_component.dart';
import 'package:flutter/material.dart';

class ShimmerTileInfo extends StatelessWidget {

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
            ShimmerComponent(width: MediaQuery.of(context).size.width / 3, height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ShimmerComponent(width: 50.0, height: 50.0)
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ShimmerComponent(width: MediaQuery.of(context).size.width / 2.5, height: 20.0)
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
