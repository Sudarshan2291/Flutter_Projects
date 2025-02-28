import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'weather_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      home: WeatherHome(),
    );
  }
}

class WeatherHome extends StatelessWidget {
  final WeatherController weatherController = Get.put(WeatherController());
  final cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Of City', style: GoogleFonts.poppins()),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: cityController,
              decoration: InputDecoration(
                labelText: 'Enter City Name',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    if (cityController.text.isNotEmpty) {
                      weatherController.getWeather(cityController.text);
                    }
                  },
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Obx(() {
              if (weatherController.isLoading.value) {
                return CircularProgressIndicator();
              }

              if (weatherController.weatherData.isEmpty) {
                return Text('No Data');
              }

              var data = weatherController.weatherData;

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "${data['name']}",
                    style: GoogleFonts.poppins(fontSize: 30),
                  ),
                  Text(
                    "${data['main']['temp']}°C",
                    style: GoogleFonts.poppins(fontSize: 40),
                  ),
                  Text(
                    "${data['weather'][0]['description']}",
                    style: GoogleFonts.poppins(fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Text("Humidity: ${data['main']['humidity']}%"),
                  Text("Wind Speed: ${data['wind']['speed']} m/s"),
                  SizedBox(height: 10),
                  Text("Sea Level: ${data['main']['sea_level']}m"),
                  Text("Ground Level: ${data['main']['grnd_level']}m"),
                  // SizedBox(height: 10),
                  // Row(
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Icon(
                  //       Icons.wb_twilight_rounded,
                  //       color: Colors.amberAccent,
                  //     ),
                  //     Text("Sunrise: ${data['sys']['sunrise']}")
                  //   ],
                  // ),
                  // Row(
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Icon(
                  //       Icons.wb_twighlight,
                  //       color: Colors.amberAccent,
                  //     ),
                  //     Text("Sunset: ${data['sys']['sunset']}")
                  //   ],
                  // )
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
