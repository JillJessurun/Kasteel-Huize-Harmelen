import 'package:flutter/material.dart';
import 'package:kasteelhuizeharmelen/pages/home_page.dart';
import 'package:kasteelhuizeharmelen/widgets/design/page_ui.dart';

import '../gen/assets.gen.dart';

// dynamically load all images from generated assets
final List<String> galleryPaths =
    Assets.gallery.values.map((img) => img.path).toList();

// fotogalerij page
class FotogalerijPage extends StatefulWidget {
  const FotogalerijPage({super.key});

  @override
  _FotogalerijPageState createState() => _FotogalerijPageState();
}

class _FotogalerijPageState extends State<FotogalerijPage> {
  @override
  Widget build(BuildContext context) {
    // basic UI
    return Stack(
      children: [
        // page UI
        PageUI(
          backgroundPath: "assets/images/top_background.png",
          backWidget: HomePage(),
        ),

        // page content
        Fotogalerij(),
      ],
    );
  }
}

class Fotogalerij extends StatelessWidget {
  const Fotogalerij({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 90, bottom: 70),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: GridView.builder(
          padding: const EdgeInsets.all(8.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 images per row
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: galleryPaths.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => _showImageDialog(context, galleryPaths[index]),
              child: Image.asset(galleryPaths[index], fit: BoxFit.cover),
            );
          },
        ),
      ),
    );
  }

  void _showImageDialog(BuildContext context, String imagePath) {
    showDialog(
      context: context,
      builder:
          (context) => Dialog(
            child: Stack(
              children: [
                InteractiveViewer(
                  panEnabled: true,
                  minScale: 0.5,
                  maxScale: 2.0,
                  child: Image.asset(imagePath),
                ),
              ],
            ),
          ),
    );
  }
}
