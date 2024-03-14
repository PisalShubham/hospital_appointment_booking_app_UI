import 'package:apponiment_booking_application/create_account_page.dart';
import 'package:apponiment_booking_application/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          left: 35,
          right: 35,
          bottom: 20,
        ),
        child: Column(
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Image.asset(
                "assets/images/homepage.jpg",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "Let's You In",
              style: GoogleFonts.jost(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.only(
                  left: 32,
                  top: 5,
                  bottom: 5,
                ),
                width: 340,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                      color: const Color.fromARGB(255, 206, 202, 202),
                      width: 2),
                ),
                child: Row(
                  children: [
                    Image.network(
                      "https://i.pinimg.com/originals/b7/86/79/b786795a5bfba85a9d0422b015d2a460.jpg",
                      height: 35,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Continue With Google",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(172, 171, 171, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 21,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Container(
                  width: 145,
                  height: 2,
                  color: const Color.fromRGBO(16, 64, 59, 80),
                ),
                Text(
                  " OR ",
                  style: GoogleFonts.quicksand(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(16, 64, 59, 80),
                  ),
                ),
                Container(
                  width: 145,
                  height: 2,
                  color: const Color.fromRGBO(16, 64, 59, 80),
                ),
              ],
            ),
            const SizedBox(height: 27),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreateAccount(),
                    ),
                  );
                });
              },
              child: Container(
                padding: const EdgeInsets.only(
                  left: 73,
                  top: 15,
                  bottom: 5,
                ),
                width: 340,
                height: 60,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(25, 154, 142, 5),
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Text(
                  "CREATE ACCOUNT",
                  style: GoogleFonts.jost(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.only(left: 22),
              child: Row(
                children: [
                  Text(
                    "already have an account ? ",
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(172, 171, 171, 1)),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInPage(),
                          ),
                        );
                      });
                    },
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.inter(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(25, 154, 142, 1)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
