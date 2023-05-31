import 'dart:convert';
import 'package:criclive/features/data/models/score_model.dart';
import 'package:http/http.dart' as http;

class ScoreRemoteDataSource {
  final String url =
      "https://api.cricapi.com/v1/currentMatches?apikey=3f8e7010-5b14-45e0-a8dc-d28db2c468af&offset=0";

  Future<List<ScoreModel>> getLatestScore() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      // print(jsonData);
      if (jsonData['data'] != null) {
        List<dynamic> jsonList = jsonData['data'];
      //  print('came here');
        if (jsonList.isNotEmpty) {
        //  print(jsonList);
          List<ScoreModel> data = jsonList
              .map((json) => ScoreModel.fromJson(json as Map<String, dynamic>))
              .toList();
          return data;
        }
      }
    }

    throw Exception('Failed to load matches');
  }
}
