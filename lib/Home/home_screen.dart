import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:kiet_first_app/Home/song_audio_screen.dart';
import 'package:kiet_first_app/Home/trich_dan_screen.dart';
import 'package:kiet_first_app/block/block_screen.dart';
import 'package:kiet_first_app/block/bottom_screen.dart';
import 'package:kiet_first_app/block/catogory_box.dart';
import 'package:kiet_first_app/block/job_screen.dart';
import 'package:kiet_first_app/block/life_screen.dart';
import 'package:kiet_first_app/block/pages.dart';
import 'package:kiet_first_app/block/relax_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String homeClick = 'SA';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[600],
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 245, 234, 163),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.brown,
                          size: 30,
                        ),
                        Text(
                          'Tìm kiếm',
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Row(
                  children: [
                    Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 245, 225, 163),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.brown,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1534528741775-53994a69daeb?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500'),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 150,
                            child: GestureDetector(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    homeClick = 'SA';
                                  });
                                },
                                child: const Text(
                                  'Sóng AUDIO',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder(),
                                  backgroundColor: Colors.grey[100],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: 150,
                            child: GestureDetector(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    homeClick = 'TD';
                                  });
                                },
                                child: const Text(
                                  'Trích dẫn',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder(),
                                  backgroundColor: Colors.grey[100],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    (homeClick == 'TD') ? TrichDanScreen() : empty(),
                    (homeClick == 'SA') ? SongAudioScreen() : empty(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget empty() {
    return Container(color: Colors.black);
  }
}
