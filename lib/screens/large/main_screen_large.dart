import 'package:digital_library/services/file_access_services.dart';
import 'package:digital_library/services/storage_services.dart';
import 'package:digital_library/widgets/book_widget.dart';
import 'package:flutter/material.dart';

class MainScreenLarge extends StatelessWidget {
  const MainScreenLarge({super.key});

  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('Community Library'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          ActionChip(
            onPressed: () async {
              Map<bool, dynamic> dataPdf =
                  await FileAccessService.pdfPicker(context);
              if (dataPdf.keys.first == true) {
                bool result =
                    await StorageService.uploader(dataPdf.values.first);
                print(result);
              }
            },
            disabledColor: Colors.white,
            backgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            labelPadding: const EdgeInsets.only(right: 10),
            avatar: const Icon(
              Icons.upload,
              color: Colors.green,
            ),
            label: const Text(
              'Upload',
              style: TextStyle(color: Colors.green),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: List.generate(
            20,
            (index) => BookWidget(),
          ),
        ),
      ),
    );
  }
}
