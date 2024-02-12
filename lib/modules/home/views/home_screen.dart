import 'package:flutter/material.dart';

import '../../../l10n/l10n.dart';
import '../../settings/views/ta_settings.dart';
import '../../ta_route/views/ta_route.dart';
import '../../ta_widget/views/ta_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final PageController _pageController;
  int _currentNavIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _currentNavIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Animator'),
      ),
      body: Center(
        child: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const <Widget>[
            TheAnimatorRoute(),
            TheAnimatorWidgets(),
            TheAnimatorSettings(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (pageIndex) async {
          setState(() {
            _currentNavIndex = pageIndex;
          });
          await _pageController.animateToPage(
            pageIndex,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        },
        currentIndex: _currentNavIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.route),
            label: l10n.route,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.widgets),
            label: l10n.widgets,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: l10n.settings,
          ),
        ],
      ),
    );
  }
}
