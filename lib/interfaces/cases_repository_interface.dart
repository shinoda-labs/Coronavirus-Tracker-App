import 'package:coronavirus_tracker/models/cases.dart';
import 'package:coronavirus_tracker/models/cases_confirmed.dart';
import 'package:coronavirus_tracker/models/cases_suspected.dart';

abstract class ICasesRepository {
  Future<List<Cases>> getCases();
  Future<List<CasesSuspected>> getCasesSuspected();
  Future<List<CasesConfirmed>> getCasesConfirmed();
}