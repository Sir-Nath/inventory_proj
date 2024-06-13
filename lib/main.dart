import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'screens/choose.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, _) {
        return MaterialApp(
          home: const FirstPage(),
          theme: ThemeData(
            primarySwatch: Colors.blue,
            colorScheme: const ColorScheme.light(
              primary: Color(0xff103EEE),
              secondary: Color(0xff103EEE),
            ),
            useMaterial3: true,
            fontFamily: 'Montserrat',
          ),
        );
      },
    );
  }
}
