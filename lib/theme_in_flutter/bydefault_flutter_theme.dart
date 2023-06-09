import 'package:bydefault_fluttertheme/main.dart';
import 'package:bydefault_fluttertheme/theme_in_flutter/app_theme_class.dart';
import 'package:flutter/material.dart';
class FlutterThemeSTL extends StatelessWidget {
  const FlutterThemeSTL({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: FlutterThemeSTF(

      ),
    );
  }
}
///stf
class FlutterThemeSTF extends StatefulWidget {
  const FlutterThemeSTF({Key? key}) : super(key: key);

  @override
  State<FlutterThemeSTF> createState() => _FlutterThemeSTFState();
}

class _FlutterThemeSTFState extends State<FlutterThemeSTF> {
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {

    width =  MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    // apply theme
    Theme.of(context).textTheme.bodySmall;

    return  SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text('Flutter Theme',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
           Center(
            child: Text('React Native',
              style: AppTheme.lightTextTheme.titleLarge,


            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text('Android Java native',),
          ),

        ],
      ),
    );
  }
}

