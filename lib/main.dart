import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Country Picker',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

List<String> myCountries = ['pt', 'it', 'us', 'br'];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CountryCodePicker(
              showCountryOnly: true,
              initialSelection: 'BR',
              favorite: myCountries,
            ),
          ],
        ),
      ),
    );
  }
}
