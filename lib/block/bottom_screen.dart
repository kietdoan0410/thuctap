import 'package:flutter/material.dart';
import 'package:kiet_first_app/block/job_screen.dart';

class BottomScreen extends StatelessWidget {
  final onTap2;
  final String subtitle;
  const BottomScreen({super.key, required this.onTap2, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 14, 2),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Text(
                      subtitle,
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '2 mục',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => onTap2),
                ),
                child: Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ],
          ),
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
    );
  }
}
