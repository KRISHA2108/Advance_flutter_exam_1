import 'package:andvance_exam_1/provider/provider.dart';
import 'package:andvance_exam_1/views/detail%20page/detail_page.dart';
import 'package:andvance_exam_1/views/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => HomeProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const HomePage(),
          '/detail': (context) => const DetailPage(),
        },
      ),
    );
  }
}
