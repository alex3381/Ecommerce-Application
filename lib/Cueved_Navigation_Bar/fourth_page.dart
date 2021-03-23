// import 'package:experiment_seventeen_fouth/all_models/all_orientation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Sett(),
    ));

class Sett extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            // SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'HomeScreen App',
              home: Settings(),
            );
          },
        );
      },
    );
  }
}

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
