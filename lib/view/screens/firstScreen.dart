import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';

import '../../controller/home_controller.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First Screen'),
          backgroundColor: Colors.green,
        ),
      body: Column (
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GetX<HomeController>(
              init: HomeController(),
              builder: (controller) {
                return Column(
                  children: [
                    Text(controller.count.value.toString(), textAlign: TextAlign.center, style: const TextStyle(fontSize: 50.0)),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: MaterialButton(
                        onPressed: () {
                          controller.increaseCount();
                        },
                        child: const Text('Increase Count'),
                        color: Colors.green,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  ],
                );
              }
          ),

        ],
      ),
    );
  }
}
