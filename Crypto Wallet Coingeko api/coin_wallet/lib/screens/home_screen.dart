import 'package:coin_wallet/controller/coin_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final CoinController controller = Get.put(CoinController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff494F55),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    height: 50,
                    width: 50,
                    color: Colors.white,
                  ),
                  Text(
                    "Crypto Price Tracker",
                    style: textStyle(25, const Color.fromARGB(255, 4, 242, 234), FontWeight.bold),
                  ),
                ],
              ),
              Obx(
                () => controller.isLoading.value
                    ? Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount: controller.coinsList.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              // height: 60,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[700],
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey[700]!,
                                                offset: Offset(4, 4),
                                                blurRadius: 5,
                                              ),
                                            ]),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Image.network(controller
                                              .coinsList[index].image),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        flex: 0,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 150,
                                              child: Text(
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                                controller
                                                    .coinsList[index].name,
                                                style: textStyle(
                                                    18,
                                                    Colors.white,
                                                    FontWeight.w600),
                                              ),
                                            ),
                                            Text(
                                              "${controller.coinsList[index].priceChangePercentage24H.toStringAsFixed(2)} %",
                                              style: textStyle(
                                                  18,
                                                  (controller.coinsList[index]
                                                              .priceChange24H >=
                                                          0)
                                                      ? Colors.green
                                                      : Colors.red,
                                                  FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const SizedBox(height: 5),
                                      Text(
                                        "\$ ${controller.coinsList[index].currentPrice}",
                                        style: textStyle(
                                            18, Colors.white, FontWeight.w600),
                                      ),
                                      Text(
                                        controller.coinsList[index].symbol,
                                        style: textStyle(
                                            18, Colors.grey, FontWeight.w600),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
