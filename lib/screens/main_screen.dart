import 'package:flutter/material.dart';
import 'package:my/screens/home.dart';
import 'package:my/widgets/icon_badge.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final PageController _pageController = PageController();
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  int _page = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: List.generate(4, (index) => Home()),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const SizedBox(width: 7.0),
            barIcon(icon: Icons.home, page: 0),
            barIcon(icon: Icons.favorite, page: 1),
            barIcon(icon: Icons.mode_comment, page: 2, badge: true),
            barIcon(icon: Icons.person, page: 3),
            const SizedBox(width: 7.0),
          ],
        ),
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
    print(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
      navigationTapped(page);
    });
  }

  Widget barIcon(
      {IconData icon = Icons.home, int page = 0, bool badge = false}) {
    return IconButton(
      icon: badge ? IconBadge(icon: icon, size: 24.0) : Icon(icon, size: 24.0),
      color: _page == page
          ? Theme.of(context).scaffoldBackgroundColor
          : Colors.blueGrey[500],
      onPressed: () => _pageController.jumpToPage(page),
    );
  }
}
