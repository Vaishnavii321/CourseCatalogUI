import 'package:coding_junior_assignment/course_card.dart';
import 'package:coding_junior_assignment/some_more_couse_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20, vertical: 75),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //profile section
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/profile_pic.png"),
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Christiana Amandla',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Let\'s Learning to smart',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height:50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: const Icon(Icons.search, size: 30),
                  )
                ],
              ),
              const SizedBox(height: 24),

              //course progress card
              Container(
                height: 170,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.lightGreenAccent.shade100,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Row(
                        children: [
                          const Text(
                            "Mathematic Course",
                            style: TextStyle(
                              fontSize: 16,
                            )
                          ),
                          const Spacer(),
                          Container(
                            height: 50,
                            width: 120,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.lightGreenAccent.shade100,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Row(
                              children: [
                                Icon(Icons.calendar_today, size: 16),
                                SizedBox(width: 4),
                                Text('19 Nov, 2023'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.check_circle, size: 30,color: Colors.green),
                            SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Completed', style: TextStyle(fontSize: 15)),
                                Text('20', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                              ],
                            )
                          ],
                        ),
                        Container(
                              width: 3,
                              height: 50,
                              color: Colors.lightGreenAccent,
                            ),
                        const Row(
                          children: [
                            Icon(Icons.timer, color: Colors.green),
                            SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Hours Spent', style: TextStyle(fontSize: 15)),
                                Text('455', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
              ),
              const SizedBox(height: 24),

              //popular course section
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular Course', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text("View All", style: TextStyle(color: Colors.blueGrey))
                ],
              ),
              const SizedBox(height: 12),

              //course card
              SizedBox(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder:(context, index) {
                  return const Row(children: [
                    BuildCourseCard(title: 'Photoshop Editing Course', image: 'assets/photoshop.jpeg', rating: 4.8, reviews: 230, lessons: 30),
                    SizedBox(width: 10),
                    BuildCourseCard(title: 'Illustrator Editing Course', image: 'assets/illustrator.jpeg', rating: 4.9, reviews: 230, lessons: 30),
                  ],);
                  }
                ),
              ),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular Course', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text("View All", style: TextStyle(color: Colors.blueGrey))
                ],
              ),
              const SizedBox(
                height: 130,
                child: MoreCourseCard(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        iconSize: 28,
        items:  [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: _selectedIndex == 0 ? Colors.lightGreen : Colors.grey),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined, color: _selectedIndex == 1 ? Colors.lightGreen : Colors.grey),
            label: '',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined, color: _selectedIndex == 2 ? Colors.lightGreen : Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, color: _selectedIndex == 3 ? Colors.lightGreen : Colors.grey),
            label: '',
          ),
        ],
      ),
    );
  }
}