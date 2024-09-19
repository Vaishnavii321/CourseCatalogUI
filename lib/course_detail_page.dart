import 'package:coding_junior_assignment/course_enroll_button.dart';
import 'package:coding_junior_assignment/lession_card.dart';
import 'package:flutter/material.dart';

class CourseDetailsPage extends StatelessWidget {
  const CourseDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.only(top: 65, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    height:40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: const Icon(Icons.arrow_back, size: 30),
                  ),
                ),
                const Spacer(),
                Text("Details", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),),
                const Spacer(),
                Container(
                  height:40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: const Icon(Icons.notifications_none, size: 30),
                ),
              ],
            ),
            const SizedBox(height: 15),
      
            //course information section
            SizedBox(
              width: 510,
              height: 300,
              child: Card(
                color: Colors.white,
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  
                ),
                child: const Padding(
                  padding:  EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Our Student' ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundImage: AssetImage('assets/avatar_1.png'),
                          ),
                          SizedBox(width:10),
                          CircleAvatar(
                            radius: 18,
                            backgroundImage: AssetImage('assets/avatar_2.png'),
                          ),
                          SizedBox(width:10),
                          CircleAvatar(
                            radius: 18,
                            backgroundImage: AssetImage('assets/profile_pic.png'),
                          ),
                          SizedBox(width:10),
                          CircleAvatar(
                            radius: 18,
                            backgroundImage: AssetImage('assets/avatar_3.png'),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Text('Photoshop Editing Course', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                      SizedBox(height: 10),
                      Text(
                        'A representation that can convey the three-dimensional aspect of a design through a two-dimensional medium', 
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.blueGrey),
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          Icon(Icons.slow_motion_video),
                          SizedBox(width: 6),
                          Text('30   Lessons', style: TextStyle(color: Colors.blueGrey)),
                          Spacer(),
                          Icon(Icons.access_time_rounded),
                          SizedBox(width: 6),
                          Text('13h 30min', style: TextStyle(color: Colors.blueGrey)),
                        ],
                      )
                    ],
                  ),
                )
              ),
            ),
            const SizedBox(height: 20),
            //video section
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Video', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('View All', style: TextStyle(color: Colors.blueGrey)),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 8),
                children: const [
                  Lessioncard(title: 'Introduction', duration: '3h 30min'),
                  SizedBox(height: 4),
                  Lessioncard(title: 'Install Software', duration: '1h 30min'),
                  SizedBox(height: 4),
                  Lessioncard(title: 'Learn Tools', duration: '2h 30min'),
                  SizedBox(height: 4),
                  Lessioncard(title: 'Tracking Sketsa', duration: '4h 30min'),
                ],
              ),
            ),
            CoursEnrollButton(),
          ],
        ),
      ),
    );
  }
}