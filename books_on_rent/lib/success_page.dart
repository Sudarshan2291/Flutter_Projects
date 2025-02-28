import './appcolor.dart';
import './order_details_page.dart';
import './main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:class_project/home.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.color4,
      appBar: AppBar(
        
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text("Order Placed",
                style: GoogleFonts.quicksand(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.black)),
          ),
          Image.asset(
            "assets/images/payment_success.png",
            height: 250,
          ),
          Text(
            "Success!",
            style: GoogleFonts.quicksand(
                fontSize: 40, fontWeight: FontWeight.w900, color: Colors.black),
          ),
          Text(
            "Your order will be delivered soon",
            style: GoogleFonts.quicksand(
                fontSize: 17, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          Text(
            "Thank You!for choosing our app.",
            style: GoogleFonts.quicksand(
                fontSize: 17, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Order Id : 1",
            style: GoogleFonts.quicksand(
                fontSize: 17, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(AppColor.color1)),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const OrderDetailsPage();
                }));
              },
              child: Text("View Order",
                  style: GoogleFonts.quicksand(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black))),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(AppColor.color1)),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) =>  const  HomePage()),
                    (Route<dynamic> route) => false);
              },
              child: Text("Home Page",
                  style: GoogleFonts.quicksand(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)))
        ],
      ),
    );
  }
}
