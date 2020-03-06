import 'package:coronavirus_tracker/controller/cases_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:intl/intl.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  CasesController _casesController;

  @override
  void initState() {
    super.initState();
    _casesController = CasesController();
    _casesController.loadCases();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Coronavirus Tracker',
          style: TextStyle(fontFamily: 'Google'),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Observer(
                name: 'LastUpdate',
                builder: (BuildContext context) {
                  return AnimationLimiter(
                    child: Text(
                        _casesController.listCases != null 
                            ? _casesController.listCases[0].date
                            : 'Loading ...',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Google')),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
