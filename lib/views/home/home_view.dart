import 'package:coronavirus_tracker/controller/cases_controller.dart';
import 'package:coronavirus_tracker/controller/deaths_controller.dart';
import 'package:coronavirus_tracker/controller/recovered_controller.dart';
import 'package:coronavirus_tracker/shared/color_constants.dart';
import 'package:coronavirus_tracker/shared/image_constants.dart';
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
                      _casesController.isDataCases
                          ? _casesController.getDate
                          : 'Loading ...',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Google'));
                },
              ),
              Observer(
                name: 'Cases',
                builder: (BuildContext context) {
                  return _casesController.isDataCases
                      ? TileInfo(
                          color: ColorsConstants.casesColor,
                          title: 'Cases',
                          image: ImageConstants.caseImage,
                          number: _casesController.getDataCases)
                      : ShimmerTileInfo();
                },
              ),
              Observer(
                name: 'CasesSuspected',
                builder: (BuildContext context) {
                  return _casesController.isDataCasesSuspected
                      ? TileInfo(
                          color: ColorsConstants.casesSuspectColor,
                          title: 'Suspected Cases',
                          image: ImageConstants.caseSuspectImage,
                          number: _casesController.getDataCasesSuspected)
                      : ShimmerTileInfo();
                },
              ),
              Observer(
                name: 'CasesConfirmed',
                builder: (BuildContext context) {
                  return _casesController.isDataCasesConfirmed
                      ? TileInfo(
                          color: ColorsConstants.casesConfirmedColor,
                          title: 'Confirmed Cases',
                          image: ImageConstants.caseConfirmedImage,
                          number: _casesController.getDataCasesConfirmed)
                      : ShimmerTileInfo();
                },
              ),
              Observer(
                name: 'Deaths',
                builder: (BuildContext context) {
                  return _deathController.isDataDeaths
                      ? TileInfo(
                          color: ColorsConstants.deathsColor,
                          title: 'Deaths',
                          image: ImageConstants.deathsImage,
                          number: _deathController.getDataDeaths)
                      : ShimmerTileInfo();
                },
              ),
              Observer(
                name: 'Recovered',
                builder: (BuildContext context) {
                  return _recoveredController.isDataRecovered
                      ? TileInfo(
                          color: ColorsConstants.recoveredColor,
                          title: 'Recovered',
                          image: ImageConstants.recoveredImages,
                          number: _recoveredController.getDataRecovered)
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
