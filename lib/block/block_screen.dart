import 'package:flutter/material.dart';
import 'package:kiet_first_app/block/bottom_screen.dart';
import 'package:kiet_first_app/block/catogory_box.dart';
import 'package:kiet_first_app/block/job_screen.dart';
import 'package:kiet_first_app/block/life_screen.dart';
import 'package:kiet_first_app/block/pages.dart';
import 'package:kiet_first_app/block/relax_screen.dart';

class BlockScreen extends StatefulWidget {
  const BlockScreen({super.key});

  @override
  State<BlockScreen> createState() => _BlockScreenState();
}

class _BlockScreenState extends State<BlockScreen> {
  String curr = 'TG';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[600],
      appBar: AppBar(
        title: Text('Scroll Screen'),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 20, 8, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                              onPressed: () {},
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
                              onPressed: () {},
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
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        switch (index) {
                          case 0:
                            return CatogoryBox(
                              onTap: () {
                                setState(() {
                                  curr = 'TG';
                                });
                              },
                              shadow: (curr == 'TG')
                                  ? [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 230, 157, 21)
                                            .withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ]
                                  : null,
                              title: 'Thư giãn',
                              color: Colors.pink[700],
                            );
                          case 1:
                            return CatogoryBox(
                              onTap: () {
                                setState(() {
                                  curr = 'DS';
                                });
                              },
                              shadow: (curr == 'DS')
                                  ? [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 230, 157, 21)
                                            .withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ]
                                  : null,
                              title: 'Đời sống',
                              color: Colors.green[700],
                            );
                          case 2:
                            return CatogoryBox(
                              onTap: () {
                                setState(() {
                                  curr = 'CV';
                                });
                              },
                              shadow: (curr == 'CV')
                                  ? [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 230, 157, 21)
                                            .withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ]
                                  : null,
                              title: 'Công việc',
                              color: Colors.blue[700],
                            );
                          default:
                            return Container();
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  (curr == 'TG')
                      ? BottomScreen(
                          subtitle: 'Thư giãn',
                          onTap2: RelaxScreen(),
                        )
                      : empty(),
                  (curr == 'DS')
                      ? BottomScreen(
                          subtitle: 'Đời sống',
                          onTap2: LifeScreen(),
                        )
                      : empty(),
                  (curr == 'CV')
                      ? BottomScreen(
                          subtitle: 'Công việc',
                          onTap2: JobScreen(),
                        )
                      : empty(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget empty() {
    return Container(color: Colors.black);
  }
}
