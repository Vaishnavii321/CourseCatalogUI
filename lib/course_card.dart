import 'package:coding_junior_assignment/course_detail_page.dart';
import 'package:flutter/material.dart';

class BuildCourseCard extends StatelessWidget {
  final String title;
  final String image;
  final double rating;
  final int reviews;
  final int lessons;

  const BuildCourseCard({
    required this.title,
    required this.image,
    required this.rating,
    required this.reviews,
    required this.lessons,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (title == 'Photoshop Editing Course') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CourseDetailsPage(),
            ),
          );
        }
      },
      child: Card(
        color: Colors.white,
        child: Container(
          width: 200,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
      
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    image,
                    height: 80,
                    width: double.infinity,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const CircleAvatar(
                        radius: 12,
                        backgroundImage: AssetImage('assets/avatar_1.png'),
                    ),
                      
                    const CircleAvatar(
                        radius: 12,
                        backgroundImage: AssetImage('assets/avatar_2.png'),
                    ),
                      
                    const CircleAvatar(
                        radius: 12,
                        backgroundImage: AssetImage('assets/avatar_3.png'),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.lightGreen[400],
                      radius: 12,
                      child: Text('+20 ', style: TextStyle(color: Colors.white, fontSize: 9)),
                    ),
                    const Spacer(),
                    const Text('Participant', style: TextStyle(color: Colors.black, fontSize: 13)),
                  ],
                ),
                const SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  height: 2,
                  color: Colors.grey[300],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow[700], size: 18),
                    const SizedBox(width: 2),
                    Text('$rating', style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w400,fontSize: 15,),),
                    const SizedBox(width: 2),
                    Text('($reviews)', style: TextStyle(fontSize: 10, color: Colors.grey[700],fontWeight: FontWeight.w400)),
                    const Spacer(),
                    Icon(Icons.slow_motion_video, size: 18, color: Colors.grey[700],),
                    const SizedBox(width: 4),
                    Text('$lessons Lessons', style: TextStyle(color: Colors.grey[700],fontSize: 12, fontWeight: FontWeight.w400)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}