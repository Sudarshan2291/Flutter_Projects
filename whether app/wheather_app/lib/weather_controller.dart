import 'dart:developer';

import 'package:get/get.dart';
import 'weather_service.dart';

class WeatherController extends GetxController {
  var isLoading = false.obs;
  var weatherData = {}.obs;
  WeatherService weatherService = WeatherService();

  void getWeather(String city) async {
    try {
      isLoading(true);
      var data = await weatherService.fetchWeather(city);
      weatherData.value = data;
      log("$data");
      log("${weatherData.value}");
    } catch (e) {
      Get.snackbar('Error', 'City not found');
    } finally {
      isLoading(false);
    }
  }
}
