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
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(10),),
        child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.amber,
          ),
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            // backgroundColor: Colors.amber,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.red,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    IconImages.shopIcon,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    IconImages.balanceIcon,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    IconImages.qrCodeIcon,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    IconImages.profileIcon,
                  ),
                ),
                label: '',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
