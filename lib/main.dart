import 'package:flutter/material.dart';
import './presentation/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Donna's Portfolio",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
        fontFamily: 'NotoSansKR',
      ),
      home: const HomeScreen(),
    );
  }
}


//https://docs.fastlane.tools/getting-started/android/setup/
//https://nkstar-ios.tistory.com/entry/Flutter-Fastlane%EC%9C%BC%EB%A1%9C-%EB%B0%B0%ED%8F%AC-%EC%9E%90%EB%8F%99%ED%99%94%EB%A5%BC-%ED%95%B4%EB%B3%B4%EC%9E%90-1
//1. brew install fastlane
//2. cd android || ios from root dir
//3. fastlane init