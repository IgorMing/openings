import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openings/controllers/openings.controller.dart';
import 'package:openings/screens/details.dart';
import 'package:openings/services/openings.service.dart';
import 'package:openings/widgets/list_item.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final OpeningsController openings =
        Get.put(OpeningsController(FirebaseOpeningsDataFetcher()));

    return Scaffold(
      appBar: AppBar(
        title: Text('Openings'),
      ),
      body: SafeArea(
        child: Obx(
          () => ListView.builder(
            itemCount: openings.length,
            itemBuilder: (context, index) {
              final opening = openings.data[index];
              return ListCard(
                opening.name,
                description: opening.history,
                onTap: () {
                  Get.to(Details());
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
