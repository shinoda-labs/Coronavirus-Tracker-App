import 'package:coronavirus_tracker/models/recovered.dart';

abstract class IRecoveredInterface {
  Future<List<Recovered>> getRecovered();
}