import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test2/screens/grocery_home/grocery_home.dart';
import 'package:test2/screens/category/category_screen.dart';
import 'package:test2/widgets/white_screen.dart';
import '../core/utils/assets_manager.dart';
import '../core/utils/color_manager.dart';

class HomeScreenWithNavBar extends StatefulWidget {
  const HomeScreenWithNavBar({super.key});

  @override
  State<HomeScreenWithNavBar> createState() => _HomeScreenWithNavBarState();
}

class _HomeScreenWithNavBarState extends State<HomeScreenWithNavBar> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    GroceryHome(),
    CategoryScreen(),
    const WhiteScreen(),
    const WhiteScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
          color: ColorManager.black20.withOpacity(0.1),
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: ColorManager.black100,
          items: [
            SvgPicture.asset(
              AssetsManager.home,
              colorFilter: ColorFilter.mode(
                  _currentIndex == 0 ? ColorManager.orangeYellow : Colors.black,
                  BlendMode.srcIn),
            ),
            SvgPicture.asset(
              AssetsManager.category,
              colorFilter: ColorFilter.mode(
                  _currentIndex == 1 ? ColorManager.orangeYellow : Colors.black,
                  BlendMode.srcIn),
            ),
            SvgPicture.asset(
              AssetsManager.heart,
              colorFilter: ColorFilter.mode(
                  _currentIndex == 2 ? ColorManager.orangeYellow : Colors.black,
                  BlendMode.srcIn),
            ),
            SvgPicture.asset(
              AssetsManager.morevertical,
              colorFilter: ColorFilter.mode(
                  _currentIndex == 3 ? ColorManager.orangeYellow : Colors.black,
                  BlendMode.srcIn),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }
}
