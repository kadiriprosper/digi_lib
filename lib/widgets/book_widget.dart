import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      constraints: const BoxConstraints(
        minWidth: 200,
        minHeight: 320,
        maxHeight: 400,
        maxWidth: 280,
      ),
      color: Colors.black,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: const EdgeInsets.all(10),
          constraints: const BoxConstraints(
            minWidth: 200,
            minHeight: 80,
            maxHeight: 100,
            maxWidth: 280,
          ),
          width: 280,
          height: 100,
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'The Ferrys tale donihubdlb sdbv dkn  dmosd sdom',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'Date Uploaded',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.download),
                color: Colors.white,
                iconSize: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
