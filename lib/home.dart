import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openings/controllers/openings.controller.dart';
import 'package:openings/services/openings.service.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final OpeningsController openings =
        Get.put(OpeningsController(FirebaseOpeningsDataFetcher()));

    return Scaffold(
      body: SafeArea(
          child: Obx(
        () => ListView.builder(
          itemCount: openings.length,
          itemBuilder: (context, index) {
            return Text('teste');
          },
        ),
      )),
    );
  }
}
