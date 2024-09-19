import 'package:coding_junior_assignment/payment_page.dart';
import 'package:flutter/material.dart';

class CoursEnrollButton extends StatelessWidget {
  const CoursEnrollButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PaymentSuccessScreen(),
            )
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(12)
                
              ),
              child: const Icon(Icons.bookmark_outlined, color: Colors.white, size:40),
            ),
            Container(
              height: 60,
              width: 280,
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(12)
              ),
              child: const Center(
                child: Text(
                  'Enroll Now',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}