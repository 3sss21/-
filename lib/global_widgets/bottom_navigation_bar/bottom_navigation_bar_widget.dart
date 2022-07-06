import 'package:first_project/commons/icon_images.dart';
import 'package:first_project/pages/QR_code_page/QR_code_page.dart';
import 'package:first_project/pages/balance_page/balance_page.dart';
import 'package:first_project/pages/profile_page/profile_page.dart';
import 'package:first_project/pages/shop_page/shop_page.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final int currentIndex;
  const BottomNavigationBarWidget({Key? key, required this.currentIndex})
      : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationBarWidget> {
  late int _selectedIndex;

  final List<Widget> _widgetOptions = <Widget>[
    const ShopPage(),
    const BalancePage(),
    const QRCodePage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    _selectedIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 30),
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            // color: Color(0xff17453B),
            color: Colors.red,
            offset: Offset(4, 10),
            blurRadius: 10,
            spreadRadius: 0,
            blurStyle: BlurStyle.normal,
          )
        ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(10),
          ),
          child: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: const Color(0xff17453B),
            ),
            child: BottomNavigationBar(
              // selectedIconTheme: IconThemeData(color: Colors.white),
              // unselectedIconTheme: IconThemeData(color: Colors.white),
              showUnselectedLabels: false,
              showSelectedLabels: false,

              // enableFeedback: false,
              selectedItemColor: Colors.white,
              // unselectedItemColor: Color(0xffffffff),
              iconSize: 40,
              items: [
                BottomNavigationBarItem(
                  activeIcon: ImageIcon(
                    AssetImage(IconImages.shopIcon),
                    color: Colors.amber,
                  ),
                  icon: ImageIcon(
                    AssetImage(
                      IconImages.shopIcon,
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  activeIcon: ImageIcon(
                    AssetImage(IconImages.shopIcon),
                    color: Colors.amber,
                  ),
                  icon: ImageIcon(
                    AssetImage(
                      IconImages.balanceIcon,
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  activeIcon: ImageIcon(
                    AssetImage(IconImages.shopIcon),
                    color: Colors.white,
                  ),
                  icon: ImageIcon(
                    AssetImage(
                      IconImages.qrCodeIcon,
                    ),
                    color: Colors.white,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  activeIcon: ImageIcon(
                    AssetImage(IconImages.shopIcon),
                    color: Colors.amber,
                  ),
                  icon: ImageIcon(
                    AssetImage(
                      IconImages.profileIcon,
                    ),
                  ),
                  label: '',
                ),
              ],
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}
