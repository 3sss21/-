import 'package:first_project/global_widgets/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    navigate();
    super.initState();
  }

  Future navigate() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    return Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const BottomNavigationBarWidget(currentIndex: 0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 242.w,
          height: 242.h,
          child: Center(
            child: Image.asset('assets/images/splash_page.png'),
          ),
        ),
      ),
    );
  }
}
