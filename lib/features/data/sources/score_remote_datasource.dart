import 'dart:convert';
import 'package:http/http.dart' as http;


import 'package:criclive/features/data/models/score_model.dart';

class ScoreRemoteDataSource {
  final String url =
      "https://api.cricapi.com/v1/currentMatches?apikey=3f8e7010-5b14-45e0-a8dc-d28db2c468af&offset=0";

  Future<List<ScoreModel>> getLatestScore() async {
    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);
        print('Response JSON: $jsonData');
        
        if (jsonData['data'] != null) {
          List<dynamic> jsonList = jsonData['data'];
          print('JSON List: $jsonList');
          
          if (jsonList.isNotEmpty) {
            List<ScoreModel> data = jsonList
                .map((json) => ScoreModel.fromJson(json as Map<String, dynamic>))
                .toList();
            print('Mapped Data: $data');
            return data;
          }
        }
      } else {
        print('HTTP error, status : ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching scores: $e');
    }

    throw Exception('Failed to load matches');
  }
}
