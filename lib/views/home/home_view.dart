import 'package:coronavirus_tracker/controller/cases_controller.dart';
import 'package:coronavirus_tracker/controller/deaths_controller.dart';
import 'package:coronavirus_tracker/controller/recovered_controller.dart';
import 'package:coronavirus_tracker/shared/color_constants.dart';
import 'package:coronavirus_tracker/views/home/components/shimmer_tile_info.dart';
import 'package:coronavirus_tracker/views/home/components/tile_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  CasesController _casesController;
  DeathController _deathController;
  RecoveredController _recoveredController;

  @override
  void initState() {
    super.initState();
    _casesController = CasesController();
    _deathController = DeathController();
    _recoveredController = RecoveredController();
    _casesController.loadCases();
    _casesController.loadCasesSuspected();
    _casesController.loadCasesConfirmed();
    _deathController.loadDeaths();
    _recoveredController.loadRecovered();
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
                  return Text(
                      _casesController.listCases != null
                          ? _casesController.listCases[0].date
                          : 'Loading ...',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Google'));
                },
              ),
              Observer(
                name: 'Cases',
                builder: (BuildContext context) {
                  return _casesController.listCases != null
                      ? TileInfo(
                          color: ColorsConstants.casesColor,
                          title: 'Cases',
                          image: 'assets/images/cases.png',
                          number: _casesController.listCases[0].cases)
                      : ShimmerTileInfo();
                },
              ),
              Observer(
                name: 'CasesSuspected',
                builder: (BuildContext context) {
                  return _casesController.listCasesSuspected != null
                      ? TileInfo(
                          color: ColorsConstants.casesSuspectColor,
                          title: 'Suspected Cases',
                          image: 'assets/images/cases_suspected.png',
                          number: _casesController.listCasesSuspected[0].data)
                      : ShimmerTileInfo();
                },
              ),
              Observer(
                name: 'CasesConfirmed',
                builder: (BuildContext context) {
                  return _casesController.listCasesConfirmed != null
                      ? TileInfo(
                          color: ColorsConstants.casesConfirmedColor,
                          title: 'Confirmed Cases',
                          image: 'assets/images/cases_confirmed.png',
                          number: _casesController.listCasesConfirmed[0].data)
                      : ShimmerTileInfo();
                },
              ),
              Observer(
                name: 'Deaths',
                builder: (BuildContext context) {
                  return _deathController.listDeaths != null
                      ? TileInfo(
                          color: ColorsConstants.deathsColor,
                          title: 'Deaths',
                          image: 'assets/images/deaths.png',
                          number: _deathController.listDeaths[0].data)
                      : ShimmerTileInfo();
                },
              ),
              Observer(
                name: 'Recovered',
                builder: (BuildContext context) {
                  return _recoveredController.listRecovered != null
                      ? TileInfo(
                          color: ColorsConstants.recoveredColor,
                          title: 'Recovered',
                          image: 'assets/images/recovered.png',
                          number: _recoveredController.listRecovered[0].data)
                      : ShimmerTileInfo();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
