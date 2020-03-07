import 'package:coronavirus_tracker/models/deaths.dart';

abstract class IDeathsRepository {
  Future<List<Deaths>> getDeaths();
}