import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/resourses/color_manger.dart';
import 'package:movies_app/features/browse/presentation/browse_tab.dart';
import 'package:movies_app/features/home/presentation/home_tab.dart';
import 'package:movies_app/features/search/presentation/search_tab.dart';
import 'package:movies_app/features/wishlist/presentation/wishlist_tab.dart';
import 'package:movies_app/gen/assets.gen.dart';

class MainShellScreen extends StatefulWidget {
  const MainShellScreen({super.key});

  @override
  State<MainShellScreen> createState() => _MainShellScreenState();
}

class _MainShellScreenState extends State<MainShellScreen> {
  List<Widget> tabs = [
    HomeTab(),
    SearchTab(),
    BrowseTab(),
    WishlistTab()
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorManger.backgroundColor,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: ColorManger.primaryColor,
        unselectedItemColor: ColorManger.unSelectedIconColor,
        selectedLabelStyle: TextStyle(
          fontSize: 8.sp,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 8.sp,
          fontWeight: FontWeight.w500,
        ),

        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.icons.homeIcon.path)),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.icons.search2.path)),
            label: 'SEARCH',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.icons.iconMaterialMovie.path)),
            label: 'BROWSE',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.icons.iconIonicMdBookmarks.path)),
            label: 'WISHLIST',
          ),
        ],
      ),
    );
  }
}
