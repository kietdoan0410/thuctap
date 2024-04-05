import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:kiet_first_app/Scroll/scroll_screen.dart';
import 'package:intl/intl.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  bool click = false;
  int selectedIndex = -1;

  setComment(int value) async {
    setState(() {
      selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Comment Screen'),
        leading: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ScrollScreen()),
          ),
          child: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          boxComment(' vừa thích bài Piep của bạn'),
          Container(
            color: selectedIndex == 1 ? Colors.white : Colors.blue[100],
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1534528741775-53994a69daeb?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Row(
                      //   children: [
                      //     Text(
                      //       'Lê Thiện Viễn',
                      //       style: TextStyle(
                      //         fontWeight: FontWeight.bold,
                      //       ),
                      //     ),
                      //     Text(
                      //       'vừa mời bạn tham gia toạ đàm trực tuyến trên PiepME',
                      //     ),
                      //   ],
                      // ),
                      RichText(
                        text: const TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Lê Thiện Viễn',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black)),
                            TextSpan(
                                text:
                                    ' vừa mời bạn tham gia toạ đàm trực tuyến trên PiepME!',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black)),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            DateFormat('dd/MM/yyyy').format(DateTime.now()),
                            style: TextStyle(color: Colors.blue[800]),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: GestureDetector(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    setComment(1);
                                  });
                                },
                                child: const Text(
                                  'Từ chối',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder(),
                                  backgroundColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 125,
                            child: GestureDetector(
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    setComment(1);
                                  });
                                },
                                child: const Text(
                                  'Chấp nhận',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder(),
                                  backgroundColor: Colors.yellow[700],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          boxComment(' vừa thích bài Piep của bạn'),
        ],
      ),
    );
  }

  Widget boxComment(action) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1534528741775-53994a69daeb?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500'),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'Lê Thiện Viễn',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    action,
                    maxLines: 2,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    DateFormat('dd/MM/yyyy').format(DateTime.now()),
                    style: TextStyle(color: Colors.blue[800]),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
