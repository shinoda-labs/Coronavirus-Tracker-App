import 'dart:convert';

import 'package:coronavirus_tracker/interfaces/recovered_repository_interface.dart';
import 'package:coronavirus_tracker/models/recovered.dart';
import 'package:coronavirus_tracker/shared/api_constants.dart';
import 'package:http/http.dart' as http;

class RecoveredRepository implements IRecoveredInterface {
  @override
  Future<List<Recovered>> getRecovered() async {
    try {
      List<Recovered> listRecovered = List();
      final response = await http.get(ApiConstants.recoveredUrl,
          headers: {'Authorization': ApiConstants.apiToken});
      if (response.statusCode == 200) {
        var decodeJson = jsonDecode(response.body);
        decodeJson.forEach((item) => listRecovered.add(Recovered.fromJson(item)));
        return listRecovered;
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