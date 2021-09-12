import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:rent_car/screens/registeration/registration_page.dart';
import 'package:rent_car/widgets/bottom_nav_bar.dart';

AppBar homePageAppBar(BuildContext context, int titleIndex) => AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      // systemOverlayStyle: SystemUiOverlayStyle.light,
      title: Text(
        titles[titleIndex],
        style: const TextStyle(color: Colors.black),
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Badge(child: const Icon(Icons.notes)),
        ),
        GestureDetector(
          child: const CircleAvatar(),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const RegistrationPage()));
          },
        ),
        const SizedBox(
          width: 16.0,
        )
      ],
    );
