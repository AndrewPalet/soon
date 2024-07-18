import 'package:countdown_app/assets/my_app_theme.dart';
import 'package:countdown_app/core/controllers/home_controller.dart';
import 'package:countdown_app/global/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetWidget<HomeController> {
  static const String route = '/homeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hello World - B'),
                Text('Bottom3')
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Obx(
                      () => Text(
                    'App version: ${controller.appVersion}',
                    textAlign: TextAlign.center,
                    style: Get.textTheme.appVersionTextStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
