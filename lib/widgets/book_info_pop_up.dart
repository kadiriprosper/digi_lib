import 'package:flutter/material.dart';

class BookInfoPopUp extends StatelessWidget {
  const BookInfoPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.height;
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(10),
        width: sizeWidth * 0.75,
        height: sizeHeight * 0.75,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              
            )
          ],
        ),
      ),
    );
  }
}
