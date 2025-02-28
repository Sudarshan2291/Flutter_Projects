import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class WeatherService {
  static const String apiKey = '02a0a2854a68dad8be73bad339e56702';
  static const String apiUrl =
      'https://api.openweathermap.org/data/2.5/weather';

  Future<Map<String, dynamic>> fetchWeather(String city) async {
    final url = Uri.parse('$apiUrl?q=$city&units=metric&appid=$apiKey');

    final response = await http.get(url);
    if (response.statusCode == 200) {
      log("${json.decode(response.body)}");
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load weather');
    }
  }
}
