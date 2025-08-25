import 'package:flutter/material.dart';
import 'package:news_app/models/news_item.dart';
import 'package:news_app/styles/app_colors.dart';
import 'package:news_app/widgets/news_list_view.dart';
import 'package:news_app/widgets/search_bar_widget.dart';

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
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SearchBarWidget()
                ),

                IconButton(
                  onPressed: () {
                    print("Will Filter News");
                  },
                  icon: Icon(
                    Icons.filter_list,
                    color: AppColors.primary,
                  ),
                )
              ],
            ),

            Expanded(
              child: NewsListView(
                news: [
                  NewsItem(
                    title: "Title", 
                    describtion: "Description", 
                    url: "", imageUrl: "https://media.istockphoto.com/id/2165610948/vector/idea-thinking-out-of-the-box-creativity-and-design-concept-background-banner-poster.jpg?s=2048x2048&w=is&k=20&c=HOl3EUPYM2o8a743ez3EsF793jWEYBvI3yKX48klkHk=", author: "author", date: DateTime.now(), sourceName: "dsadasd")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}