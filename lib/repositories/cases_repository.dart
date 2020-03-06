import 'dart:convert';
import 'package:coronavirus_tracker/interfaces/cases_repository_interface.dart';
import 'package:coronavirus_tracker/models/cases.dart';
import 'package:coronavirus_tracker/shared/api_constants.dart';
import 'package:http/http.dart' as http;

class CasesRepository implements ICasesRepository {
  @override
  Future<List<Cases>> getCases() async {
    try {
      List<Cases> listCases = List();
      final response = await http.get(ApiConstants.casesUrl, headers: {'Authorization': ApiConstants.apiToken});
      if (response.statusCode == 200) {
        var decodeJson = jsonDecode(response.body);
        decodeJson.forEach((item) {
          print(item);
          listCases.add(Cases.fromJson(item));
        });
        return listCases;
      } else {
        print("Erro ao carregar a lista " + response.statusCode.toString());
        return null;
      }
    } catch (error, stacktrace) {
      print("Erro ao carregar a lista " + stacktrace.toString());
      return null;
    }
  }
}