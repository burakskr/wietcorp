import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wietcorp/Helper/themecollection.dart';
import 'package:wietcorp/ViewModel/ImageViewModel.dart';
import 'package:wietcorp/pages/homepage.dart';
import 'package:wietcorp/setuplocator.dart';

void main() {
  setuplocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => ImageViewModel(),
        ),
      ],
      child: MaterialApp(
        title: "Wiet Corp",
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        theme: ThemeCollection.themelight,
      ),
    );
  }
}
