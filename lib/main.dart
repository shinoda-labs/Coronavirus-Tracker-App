import 'package:coronavirus_tracker/shared/color_constants.dart';
import 'package:coronavirus_tracker/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) => runApp(Main()));
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  bool isDark = ColorsConstants.isDark;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor:
            isDark ? ColorsConstants.darkPrimary : ColorsConstants.lightPrimary,
        statusBarBrightness: isDark ? Brightness.dark : Brightness.light));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coronavirus Tracker',
      debugShowCheckedModeBanner: false,
      theme: isDark ? ColorsConstants.darkTheme : ColorsConstants.lightTheme,
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => new HomeView(),
      },
      initialRoute: '/',
    );
  }
}
