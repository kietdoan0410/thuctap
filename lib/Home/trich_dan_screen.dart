import 'package:flutter/material.dart';
import 'package:kiet_first_app/block/bottom_screen.dart';
import 'package:kiet_first_app/block/catogory_box.dart';
import 'package:kiet_first_app/block/job_screen.dart';
import 'package:kiet_first_app/block/life_screen.dart';
import 'package:kiet_first_app/block/pages.dart';
import 'package:kiet_first_app/block/relax_screen.dart';

class TrichDanScreen extends StatefulWidget {
  const TrichDanScreen({super.key});

  @override
  State<TrichDanScreen> createState() => _TrichDanScreenState();
}

class _TrichDanScreenState extends State<TrichDanScreen> {
  String curr = 'TG';
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
        );
  }
  Widget empty() {
    return Container(color: Colors.black);
  }
}
