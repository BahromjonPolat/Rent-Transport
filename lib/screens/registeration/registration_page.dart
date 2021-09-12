import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_car/widgets/registation_page_app_bar.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  Size? _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: registrationPageAppBar,
      body: _getBody(),
    );
  }

  SingleChildScrollView _getBody() => SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            children: [
              _getHeader(),
              _getFormField(),
            ],
          ),
        ),
      );

  Container _getHeader() => Container(
        height: _size!.height * 0.3,
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        width: _size!.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Create account",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            CircleAvatar(
              radius: 64.0,
              backgroundImage: AssetImage("assets/images/profile_blank.jpg"),
              child: Transform.translate(
                offset: const Offset(32.0, -56.0),
                child: const CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.add),
                ),
              ),
            ),
          ],
        ),
      );

  _getFormField() => Container(
        height: _size!.height * 0.5,
        margin: EdgeInsets.only(
          top: 32.0,
        ),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    decoration: _setInputDecoration("Name"),
                  )),
                  SizedBox(
                    width: 24.0,
                  ),
                  Expanded(
                      child: TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    decoration: _setInputDecoration("Lastname"),
                  )),
                ],
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: _setInputDecoration("Username"),
              ),
              TextFormField(
                keyboardType: TextInputType.datetime,
                textInputAction: TextInputAction.next,
                decoration: _setInputDecoration("Date"),
                // onTap: _onDateFieldPressed,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                decoration: _setInputDecoration("Email"),
              ),
              _getNextStepButton(),
            ],
          ),
        ),
      );

  InputDecoration _setInputDecoration(String label) => InputDecoration(
        label: Text(label),
      );

  ElevatedButton _getNextStepButton() => ElevatedButton(
        onPressed: () {},
        child: Text("Next Step"),
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
                vertical: 24.0, horizontal: _size!.width * 0.33)),
      );

  void _onNextStepPressed() {

  }

  void _onDateFieldPressed() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime(2021)).then((value) {
          if (value != null) {
          }
    });
  }
}
