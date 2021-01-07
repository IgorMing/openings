import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard(this.title, {Key key, this.description}) : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 140,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                this.title,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                this.description,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
