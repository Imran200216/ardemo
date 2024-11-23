import 'package:ardemo/screens/shoe_description_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF17181A),
        body: Container(
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 30,
            bottom: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const FlutterLogo(
                    size: 34,
                  ),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      "assets/images/svg/settings-icon.svg",
                      height: 24,
                      width: 24,
                      fit: BoxFit.cover,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Metaverse\nCollection",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1512374382149-233c42b6a83b?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                    right: 12,
                    bottom: 20,
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Nike Runner",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const ShoeDescriptionScreen();
                            }));
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                "assets/images/svg/arrow-forward.svg",
                                height: 30,
                                width: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
