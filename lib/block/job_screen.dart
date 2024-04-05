import 'package:flutter/material.dart';

class JobScreen extends StatefulWidget {
  const JobScreen({super.key});

  @override
  State<JobScreen> createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 350,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue[500],
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () => Navigator.pop(context),
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '2 mục',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue[300],
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 4, 10, 4),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.headset,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Phát',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Text('Công', style: TextStyle(
                        color: Colors.blue[200],
                        fontSize: 60,

                      ),),
                      Text('Việc', style: TextStyle(
                        color: Colors.blue[200],
                        fontSize: 60,
                      ),),

                    ],
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                      width: 150,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset('lib/Images/tetcover.jpg'),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nghinh Xuân'),
                      Row(
                        children: [
                          Text('05:00'),
                          Icon(Icons.stop_rounded),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.person),
                          Text('Ngọc Vy'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                      width: 150,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset('lib/Images/dongluc.jpg'),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Động lực'),
                      Row(
                        children: [
                          Text('05:00'),
                          Icon(Icons.start_rounded),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.person),
                          Text('Hoàng Oanh'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  
  }
}