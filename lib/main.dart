import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:openings/helper.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _init = Firebase.initializeApp();

    return MaterialApp(
      home: FutureBuilder(
          future: _init,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Helper(msg: 'Erro');
            }

            if (snapshot.connectionState == ConnectionState.done) {
              return Helper(msg: 'deu bom');
            }

            return Helper(msg: 'tá carregando');
          }),
    );
  }
}
