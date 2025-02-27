import 'package:flutter_news_app/screens/tabs/everything.dart';
import 'package:flutter_news_app/screens/tabs/sources.dart';
import 'package:flutter_news_app/screens/tabs/top_headlines.dart';
import 'package:flutter/material.dart';
import 'package:news_api_flutter_package/news_api_flutter_package.dart';

class HomePage extends StatelessWidget {
  final NewsAPI _newsAPI = NewsAPI(apiKey: "4cff5b9608774fa4b9e456d8b2bef1ee");

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("News API Demo"),
      bottom: _buildTabBar(),
    );
  }

  TabBar _buildTabBar() {
    return TabBar(
      tabs: [
        Tab(text: "Top Headlines"),
        Tab(text: "Everything"),
        Tab(text: "Sources"),
      ],
    );
  }

  Widget _buildBody() {
    return TabBarView(
      children: [
        TopHeadlinesTabBody(newsAPI: _newsAPI),
        EverythingTabBody(newsAPI: _newsAPI),
        SourcesTabBody(newsAPI: _newsAPI),
      ],
    );
  }
}
