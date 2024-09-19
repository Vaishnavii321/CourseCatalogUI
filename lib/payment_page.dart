import 'package:flutter/material.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.only(top: 150, left: 30, right: 30),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.all(25),
                  height: 530,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 80), // Space for the floating icon
                      const Text(
                        "Payment Success",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        '\$35.00',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 28,
                          color: Color.fromARGB(255, 25, 144, 130),
                        ),
                      ),
                      const SizedBox(height: 18),
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 10,
                                    backgroundImage:
                                        AssetImage("assets/profile_pic.png"),
                                  ),
                                  const SizedBox(width: 12),
                                  Text(
                                    "Christiana Amandla",
                                    style: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 25),
                              const Text(
                                "Photoshop Editing Course",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(height: 40),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "ID Transcription",
                                        style: TextStyle(
                                            color: Colors.blueGrey[800],
                                            fontSize: 15),
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        "TA11231PW",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Column(
                                    children: [
                                      Text(
                                        'Invoice Date',
                                        style: TextStyle(
                                            color: Colors.blueGrey[800],
                                            fontSize: 15),
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        'Nov14, 2023',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),
                      Image.asset('assets/barcode.png'),
                    ],
                  ),
                ),
                //Adding icon
                const Positioned(
                  top: -30,
                  left: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 45,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
                // adding stickers
                const Positioned(
                  top: 0,
                  left: 60,
                  child: Icon(Icons.star, color: Colors.teal, size: 20),
                ),
                const Positioned(
                  top: -40,
                  left: 90,
                  child: Icon(Icons.circle, color: Colors.purpleAccent, size: 12),
                ),
                const Positioned(
                  top: 50,
                  left: 80,
                  child: Icon(Icons.circle, color: Colors.blue, size: 12),
                ),
                const Positioned(
                  top: -5,
                  right: 70,
                  child: Icon(Icons.circle, color: Colors.orange, size: 10),
                ),
                const Positioned(
                  top: -45,
                  right: 90,
                  child: Icon(Icons.star, color: Colors.blue, size: 15),
                ),
                const Positioned(
                  top: 40,
                  right: 80,
                  child: Icon(Icons.circle, color: Colors.green, size: 15),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  'Done',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
