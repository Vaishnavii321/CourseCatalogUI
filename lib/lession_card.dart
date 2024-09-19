import 'package:flutter/material.dart';

class Lessioncard extends StatelessWidget {
  final String title;
  final String duration;
  const Lessioncard({
    required this.title,
    required this.duration,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation:1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.blueGrey, width: 1.5 )
              ),
              child: const Icon(Icons.lock, color: Colors.blueGrey),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.access_time, color: Colors.blueGrey,),
                    const SizedBox(width: 4),
                    Text(duration, style: const TextStyle(color: Colors.blueGrey)),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.blueGrey, width: 1 )
              ),
              child: Row(
                children: [
                  Icon(Icons.play_circle, color: Colors.lightGreen[400]),
                  const SizedBox(width: 8),
                  const Text("Play Video", style: TextStyle(fontWeight: FontWeight.w300)),
                ],
              )
            )
          ],
        ),
      )
    );
  }
}