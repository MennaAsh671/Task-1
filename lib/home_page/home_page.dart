import 'package:flutter/material.dart';
import 'package:task/home_page/components/favourites_section.dart';
import 'package:task/home_page/components/greetings_section.dart';
import 'package:task/home_page/widgets/search_text_field.dart';

import 'components/top_picks_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: GreetingsSection(),
              ),
              const Padding(
                padding: EdgeInsets.all(14.0),
                child: SearchTextField(),
              ),
              Container(
                color: Colors.white,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: FavoritesSection(),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(18, 35, 15, 25),
                      child: Text(
                        "Our top picks for you 🔥",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    TopPicksSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
