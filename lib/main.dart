import 'package:flutter/material.dart';
import 'package:rent_car/screens/home/home_page.dart';
import 'package:rent_car/screens/registeration/registration_page.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rent App",
      home: RegistrationPage(),
    );
  }
}