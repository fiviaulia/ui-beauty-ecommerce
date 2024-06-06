import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  final List<String> categoryNames = [
    "Category 1",
    "Fragrance",
    "Body Lotion",
    "Moisturizer",
    "Hair Care",
    "Make up",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < categoryNames.length; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/$i.png",
                    width: 40,
                    height: 40,
                  ),
                  Text(
                    categoryNames[i], // Menggunakan nama kategori sesuai indeks
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}
