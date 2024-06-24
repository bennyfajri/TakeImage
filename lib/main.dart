import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:take_image/provider/home_provider.dart';
import 'package:take_image/provider/upload_provider.dart';
import 'package:take_image/screen/home_screen.dart';

import 'data/api/api_service.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UploadProvider(
            ApiService(),
          ),
        ),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    ),
  );
}

/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}*/