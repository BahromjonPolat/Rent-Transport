import 'package:flutter/material.dart';

AppBar _registrationPageAppBar = AppBar(
  elevation: 0.0,
  backgroundColor: Colors.transparent,
  actions: [
    _setIconButton(const Icon(Icons.security), 32.0),
    _setIconButton(const Icon(Icons.vpn_key), 24.0),
    _setIconButton(const Icon(Icons.add_shopping_cart_outlined), 24.0),
    _setIconButton(const Icon(Icons.car_rental), 24.0),
  ],
  iconTheme: const IconThemeData(color: Colors.black),
);

IconButton _setIconButton(Icon icon, double size) => IconButton(
      onPressed: () {},
      icon: Icon(
        icon.icon,
        color: Colors.blue,
        size: size,
      ),
    );

AppBar get registrationPageAppBar => _registrationPageAppBar;
