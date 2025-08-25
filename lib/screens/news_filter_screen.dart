import 'package:flutter/material.dart';
import 'package:news_app/models/country.dart';
import 'package:news_app/widgets/country_selector_widget.dart';
import 'package:news_app/widgets/selection_card_widget.dart';

class NewsFilterScreen extends StatelessWidget {
  const NewsFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Filter'),
      ),
      body: Column(
        children: [
          CountrySelectorWidget(
            initialCountry: Country.countries[2],
            onChnaged: (country){
              print("Country changed to ${country.name}");
            },
          )
        ],
      ),
    );
  }
}