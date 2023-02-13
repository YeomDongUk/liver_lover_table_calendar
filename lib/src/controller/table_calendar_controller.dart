import 'package:flutter/material.dart';

class TableCalendarController {
  final PageController _pageController = PageController();
  PageController get pageController => _pageController;

  void initInitailPage(int initalPage) =>
      _pageController.jumpToPage(initalPage * 1);

  void goPrevPage() => _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );

  void goNextPage() => _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );

  dispose() => _pageController.dispose();
}
