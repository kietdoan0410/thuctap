import 'package:flutter/material.dart';

class FollowProfile extends StatelessWidget {
  final String name;
  const FollowProfile({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1534528741775-53994a69daeb?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500'),
        ),
        Text(name, style: TextStyle(fontSize: 13),),
      ],
    );
}
}