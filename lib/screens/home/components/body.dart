// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kelal_cinema_booking/constants.dart';
import 'package:kelal_cinema_booking/screens/home/components/cinema_button.dart';
import 'package:kelal_cinema_booking/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Cinema cinemaChoice = Cinema.alem;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    'Choose cinema',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(25),
                    ),
                  ),
                  Spacer(),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CinemaButton(
                          cinema: Cinema.century,
                          cinemaName: 'Century Cinema',
                          cinemaChoice: cinemaChoice,
                          onPressed: () {
                            setState(() {
                              cinemaChoice = Cinema.century;
                            });
                          },
                        ),
                        CinemaButton(
                          cinema: Cinema.alem,
                          cinemaName: 'Alem Cinema',
                          cinemaChoice: cinemaChoice,
                          onPressed: () {
                            setState(() {
                              cinemaChoice = Cinema.alem;
                            });
                          },
                        ),
                        CinemaButton(
                          cinema: Cinema.gast,
                          cinemaName: 'Gast Cinema',
                          cinemaChoice: cinemaChoice,
                          onPressed: () {
                            setState(() {
                              cinemaChoice = Cinema.gast;
                            });
                          },
                        ),
                        CinemaButton(
                          cinema: Cinema.edna,
                          cinemaName: 'Edna-Mall Cinema',
                          cinemaChoice: cinemaChoice,
                          onPressed: () {
                            setState(() {
                              cinemaChoice = Cinema.edna;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  ListTile(
                    leading: Icon(Icons.search, color: kTextColor),
                    title: Text('search movies here'),
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      gapPadding: 5,
                      borderSide: BorderSide(width: 1.5),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'Filter',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenWidth(20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum Cinema { century, alem, gast, edna }
