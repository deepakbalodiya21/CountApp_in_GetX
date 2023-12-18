import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/home_controller.dart';
import 'package:getx/view/screens/firstScreen.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  final HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Home Screen'),
        backgroundColor: Colors.green,
        actions: [
          TextButton(
              onPressed: (){
              Get.to(const FirstScreen());
          },
              child: const Text(
                'Next',
                style: TextStyle(color: Colors.white),
              )
          ),
        ],
      ),
      body: Column (
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Obx(
          () => Column(
                children: [
                  Text(controller.count.value.toString(), textAlign: TextAlign.center, style: const TextStyle(fontSize: 50.0)),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: MaterialButton(
                    onPressed: () {
                      controller.increaseCount();
                    },
                    color: Colors.green,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: const Text('Increase Count'),
                  ),
                  ),
                ],
                ),
          ),
        ],
      ),
    );
  }
}
