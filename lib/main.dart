import 'package:flutter/material.dart';
import 'package:flutter_ulang2/pages/pages.dart';
import 'package:flutter_ulang2/shared/shared.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colorpallete.purpleCOlor,
        primaryColor: primaryColor,
        canvasColor: Colors.transparent,
            ),
      home: const WellcomePage(),
    );
  }
}





