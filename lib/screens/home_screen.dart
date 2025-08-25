import 'package:flutter/material.dart';
import 'package:news_app/models/news_item.dart';
import 'package:news_app/styles/app_colors.dart';
import 'package:news_app/widgets/news_item_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text('News'),
        backgroundColor: AppColors.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            NewsItemWidget(
              item: NewsItem(
                sourceName: "CNN",
                title: 'Title',
                describtion: 'Description',
                author: "Basel Moustafa",
                date: DateTime(2023, 1, 1),
                imageUrl: 'https://media.istockphoto.com/id/2165610948/vector/idea-thinking-out-of-the-box-creativity-and-design-concept-background-banner-poster.jpg?s=2048x2048&w=is&k=20&c=HOl3EUPYM2o8a743ez3EsF793jWEYBvI3yKX48klkHk=',
                url: 'https://www.istockphoto.com/vector/idea-thinking-out-of-the-box-creativity-and-design-concept-background-banner-poster-gm2165610948-585794664?searchscope=image%2Cfilm',
              ),
            )
          ],
        ),
      ),
    );
  }
}