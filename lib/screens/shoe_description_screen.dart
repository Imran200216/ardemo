import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ShoeDescriptionScreen extends StatelessWidget {
  const ShoeDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF17181A),
        body: Container(
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 30,
            top: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Nike white Sneakers",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                '''
Elevate your style with Nike's classic white sneakers, designed for comfort and versatility. Crafted with premium materials, they feature a sleek silhouette perfect for casual or athletic wear. Lightweight and durable, these sneakers ensure all-day support with timeless appeal.''',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 400, // Set appropriate height for the 3D model viewer
                child: ModelViewer(
                  ar: true,
                  alt: "No modal found!",
                  loading: Loading.eager,
                  autoPlay: false,
                  backgroundColor: Color(0xFF17181A),
                  src: "assets/3d-modals/nike-modal.glb",
                  autoRotate: true,
                  disableZoom: true,
                  cameraControls: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
