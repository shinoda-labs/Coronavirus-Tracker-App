import 'package:coronavirus_tracker/shared/color_constants.dart';
import 'package:flutter/material.dart';

class TileInfo extends StatefulWidget {
  final String title;
  final String image;
  final int number;
  final Color color;

  TileInfo(
      {Key key,
      @required this.color,
      @required this.title,
      @required this.image,
      @required this.number})
      : super(key: key);

  @override
  _TileInfoState createState() => _TileInfoState();
}

class _TileInfoState extends State<TileInfo> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: ColorsConstants.isDark
          ? ColorsConstants.darkPrimary
          : ColorsConstants.lightPrimary,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(widget.title,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: 'Google', color: widget.color, fontSize: 20.0, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 50.0,
                  height: 50.0,
                  child: Image.asset(widget.image)
                ),
                Text(widget.number.toString(),
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: 'Google', color: widget.color, fontSize: 20.0, fontWeight: FontWeight.bold)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
