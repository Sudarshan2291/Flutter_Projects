import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../models/coin_model.dart';

class CoinController extends GetxController {
  RxBool isLoading = true.obs;
  RxList<Coin> coinsList = <Coin>[].obs;
  @override
  onInit() {
    super.onInit();
    fetchCoins();
  }

  fetchCoins() async {
    try {
      var response = await http.get(Uri.parse(
          'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false&price_change_percentage=24h'));

      List<Coin> coins = coinFromJson(response.body);
      log(response.body);
      coinsList.value = coins;
    } finally {
      isLoading(false);
    }
  }
}
