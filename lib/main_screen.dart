import 'package:flutter/material.dart';
import 'display_images.dart';
import 'appdata.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Warren Buffett Quotes'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            height: 400.0,
            //decoration: BoxDecoration(),
            child: PageView.builder (
              controller: PageController(viewportFraction: 0.7),
              itemCount: appDataList.length,
              itemBuilder: (context, index){
                return DisplayImage(appData: appDataList[index],
                );
              },

            ),
          ),
        ],
      ),
    );
  }
}

