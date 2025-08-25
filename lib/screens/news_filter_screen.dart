import 'package:flutter/material.dart';
import 'package:news_app/styles/app_text_styles.dart';
import 'package:news_app/widgets/apply_filter_button.dart';
import 'package:news_app/widgets/category_selector_wigdet.dart';
import 'package:news_app/widgets/country_selector_widget.dart';

class NewsFilterScreen extends StatelessWidget {
  const NewsFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Filter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Country",
              style: AppTextStyles.bold18,
            ),
            CountrySelectorWidget(
              initialCountry:null,
              onChnaged: (country){
                print("Country changed to $country");
              },
            ),
        
            SizedBox(height: 10,),
        
            Text(
              "Select Category",
              style: AppTextStyles.bold18,
            ),
            CategorySelectorWidget(
              initialCategory:null,
              onChnaged: (category){
                print("Category changed to $category");
              },
            ),

            Spacer(),

            ApplyFilterButton(),

            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}