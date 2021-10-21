// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'body.dart';

class CinemaButton extends StatelessWidget {
  CinemaButton(
      {Key? key,
      required this.cinema,
      required this.cinemaName,
      required this.cinemaChoice,
      required this.onPressed})
      : super(key: key);
  final Cinema cinema;
  final String cinemaName;
  final Cinema cinemaChoice;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          cinemaName,
          style: TextStyle(
            fontWeight:
                cinemaChoice == cinema ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        color: kPrimaryColor,
        elevation: 0,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        shape: cinemaChoice == cinema
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                gapPadding: 5,
                borderSide: BorderSide(width: 3),
              )
            : null,
      ),
    );
  }
}
