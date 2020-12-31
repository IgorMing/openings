import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DatabaseReference openings = FirebaseDatabase.instance.reference().root();

    openings.once().then((snapshot) {
      snapshot.value;
    });

    return Center(
      child: Text('test'),
    );
  }
}
