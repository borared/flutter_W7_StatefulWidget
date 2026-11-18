import 'package:flutter/material.dart';

List<String> images = [
  "lib/ex-3/assets/bird.jpg",
  "lib/ex-3/assets/bird2.jpg",
  "lib/ex-3/assets/insect.jpg",
  "lib/ex-3/assets/girl.jpg",
  "lib/ex-3/assets/man.jpg",
];

void main() => runApp(
  const MaterialApp(debugShowCheckedModeBanner: false, home: ImageGallery()),
);

class ImageGallery extends StatefulWidget {
  const ImageGallery({super.key});

  @override
  State<ImageGallery> createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
  int currentIndex = 0;

  void previousImage() {
    setState(() {
      currentIndex = (currentIndex - 1 + images.length) % images.length;
    });
  }

  void nextImage() {
    setState(() {
      currentIndex = (currentIndex + 1) % images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Image viewer'),
        actions: [
          IconButton(
            icon: const Icon(Icons.navigate_before),
            tooltip: 'Go to the previous image',
            onPressed: previousImage,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next image',
              onPressed: nextImage,
            ),
          ),
        ],
      ),
      body: Center(child: Image.asset(images[currentIndex])),
    );
  }
}
