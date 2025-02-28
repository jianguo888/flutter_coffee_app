/*
 * Copyright (c) 2024 nutpi
 * 微信公众号：nutpi
 * All rights reserved.
 */

import 'dart:ui';

import '/pages/details_page.dart';
import '/widgets/monthly_coffee_widget.dart';
import '/widgets/product_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Color(0xffF5F0E6),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: height * 0.233,
                      color: Color(0xffF5C168),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Ngo",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Pi    ",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 150,
                      child: Stack(
                        children: [
                          Center(
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                "Top Pick",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: 5,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color(0xffF5C168),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100,
                      child: Center(
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            "Trending",
                            style:
                                TextStyle(fontSize: 17, color: Colors.black54),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 150,
                      child: Center(
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            "Latest",
                            style:
                                TextStyle(fontSize: 17, color: Colors.black54),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Image(
                          image: AssetImage("assets/store.png"),
                          width: MediaQuery.of(context).size.width * 0.05,
                          height: MediaQuery.of(context).size.width * 0.05,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Text(
                            "Coffee",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          Spacer(),
                          Image.asset("assets/search.png"),
                          SizedBox(width: 15),
                          Image.asset("assets/filter.png"),
                        ],
                      ),
                      MonthlyCoffeeWidget(),
                      ProductWidget(
                        price: "5.2",
                        country: "Lembank",
                        name: "Pine Blend",
                        shape: "assets/shapes1.png",
                        heroTag: "pine",
                        productImage: "assets/pocket 1.png",
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsPage(),
                              ));
                        },
                        child: ProductWidget(
                          price: "6.8",
                          country: "Indonesia",
                          name: "Kapal Air",
                          shape: "assets/shapes2.png",
                          heroTag: "kapal",
                          productImage: "assets/pocket 2.png",
                        ),
                      ),
                      ProductWidget(
                        price: "5.7",
                        country: "Japan",
                        name: "JCO Original",
                        shape: "assets/shapes3.png",
                        heroTag: "ico",
                        productImage: "assets/pocket 3.png",
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
