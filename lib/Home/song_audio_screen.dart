import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SongAudioScreen extends StatefulWidget {
  const SongAudioScreen({super.key});

  @override
  State<SongAudioScreen> createState() => _SongAudioScreenState();
}

class _SongAudioScreenState extends State<SongAudioScreen> {
  
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> item = [
      {
        'images': 'lib/Images/meditate.jpg',
        'title': 'Poisonous mushrooms',
        'content':
            'Conocube filaris is an innocent-looking law mushroom that is especially common in the...',
      },
      {
        'images': 'lib/Images/meditate2.jpg',
        'title': 'Poisonous mushrooms 2',
        'content':
            'Conocube filaris 2 is an innocent-looking law mushroom that is especially common in the...',
      },
      {
        'images': 'lib/Images/meditate.jpg',
        'title': 'Poisonous mushrooms 3',
        'content':
            'Conocube filaris 3 is an innocent-looking law mushroom that is especially common in the...',
      }
    ];

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.78,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset('lib/Images/flower.jpg'),
                Positioned(
                  top: 10,
                  left: 5,
                  child: Container(
                    width: 245,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(width: 1, color: Colors.white),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Sắp lên sóng, 16:00. 30/01/2024',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 5,
                  child: Container(
                    width: 50,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(width: 1, color: Colors.white),
                    ),
                    child: const Icon(
                      Icons.speaker_phone,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -30,
                  left: 20,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1534528741775-53994a69daeb?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Elena Nguyễn',
                        style: TextStyle(
                            color: Colors.blue[600],
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: const  Text(
                'Poisonous mushrooms',
                maxLines: 2,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => items(item[index]),
              itemCount: item.length,
            )
          ],
        ),
      ),
    );
   
  }

  Widget items(obj) {
    String img = obj['images'];
    String title = obj['title'];
    String content = obj['content'];

    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        height: 400,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  img,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      title,
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      content,
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
