import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openings/helper.dart';
import 'package:openings/home.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _init = Firebase.initializeApp();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
          future: _init,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Helper(msg: 'Erro');
            }

            if (snapshot.connectionState == ConnectionState.done) {
              return Home();
            }

            return Helper(msg: 'tá carregando');
          }),
    );
  }
}
