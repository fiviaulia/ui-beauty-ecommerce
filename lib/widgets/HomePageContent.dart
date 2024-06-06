import 'package:flutter/material.dart';

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color.fromARGB(255, 255, 143, 221)
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "urfioley",
              style: TextStyle(
                fontSize: 23,
                fontWeight:FontWeight.bold,
                color: Color.fromARGB(255, 255, 143, 221),
              ),
            ),
          ),
          Spacer(),
          Badge(
            child: InkWell(
              onTap: () {},
              child: Icon (
                Icons.shopping_bag_outlined,
                size: 35,
                color: Color.fromARGB(255, 255, 143, 221),
              ),
            ),
          ),
      ],)
    );
  }
}