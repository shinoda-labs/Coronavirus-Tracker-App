import 'dart:convert';

import 'package:coronavirus_tracker/interfaces/deaths_repository_interface.dart';
import 'package:coronavirus_tracker/models/deaths.dart';
import 'package:coronavirus_tracker/shared/api_constants.dart';
import 'package:http/http.dart' as http;

class DeathsRepository implements IDeathsRepository {
  @override
  Future<List<Deaths>> getDeaths() async {
    try {
      List<Deaths> listDeaths = List();
      final response = await http.get(ApiConstants.deathsUrl,
          headers: {'Authorization': ApiConstants.apiToken});
      if (response.statusCode == 200) {
        var decodeJson = jsonDecode(response.body);
        decodeJson.forEach((item) => listDeaths.add(Deaths.fromJson(item)));
        return listDeaths;
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
