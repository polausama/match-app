import 'package:flutter/material.dart';
import 'package:flutter_match_app/view/widgets/Laliga.dart';
import 'package:flutter_match_app/view/widgets/PerimerLega.dart';
import 'package:flutter_match_app/view/widgets/Uefa.dart';
class FixtureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
                padding: const EdgeInsets.only(left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                child: Column(
                    children: [
                      PremierLeague(),
                      LaLiga(),
                    ],
                  ),
              ),
                Padding(
                  padding: const EdgeInsets.only(left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      PremierLeague(),
                      LaLiga(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      PremierLeague(),
                     LaLiga(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      PremierLeague(),
                      LaLiga(),
                      UEFA(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      PremierLeague(),
                      LaLiga(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      PremierLeague(),
                      LaLiga(),
                    ],
                  ),
                ),
      ],
    );
  }
}
