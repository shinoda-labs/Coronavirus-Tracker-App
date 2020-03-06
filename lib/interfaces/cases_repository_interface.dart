import 'package:coronavirus_tracker/models/cases.dart';

abstract class ICasesRepository {
  Future<List<Cases>> getCases();
}