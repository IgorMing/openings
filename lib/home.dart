import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openings/controllers/openings.controller.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final OpeningsController openings = Get.put(OpeningsController());

    return Scaffold(
      body: SafeArea(
          child: Obx(
        () => ListView.builder(
          itemCount: openings.length,
          itemBuilder: (context, index) {
            return Text('test');
          },
        ),
      )),
    );
  }
}
