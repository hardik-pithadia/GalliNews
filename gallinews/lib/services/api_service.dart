import 'dart:developer';
import 'package:gallinews/model/news_model.dart';
import 'package:http/http.dart' as http;
import '../constants.dart';

class ApiService {
  Future<List<NewsModel>?> getNews(String catId) async {
    try {
      var url = Uri.parse("${ApiConstants.baseUrl}${ApiConstants.newsEndpoint}=$catId");
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<NewsModel> model = newsModelFromJson(response.body);
        return model;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}