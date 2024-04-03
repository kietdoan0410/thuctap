import 'package:flutter/material.dart';
import 'package:kiet_first_app/Signup/signup_screen.dart';
import 'package:kiet_first_app/Signup/signup_opt_scree.dart';

class SignUpNickNameScreen extends StatefulWidget {
  const SignUpNickNameScreen({super.key});

  @override
  State<SignUpNickNameScreen> createState() => _SignUpNickNameScreenState();
}

class _SignUpNickNameScreenState extends State<SignUpNickNameScreen> {
  String dropdownValue = '';
  final myController = TextEditingController();
  bool submit = false;

  @override
  void initState() {
    super.initState();
    myController.addListener(() {
      setState(() {
        submit = myController.text.isNotEmpty;
      });
    });
  }
  @override
  

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Đăng Ký'),
        leading: GestureDetector(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
                ),
            child: Icon(Icons.arrow_back_ios)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Icon(
                  Icons.edit,
                  size: 60,
                  color: Colors.blue[800],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Vui lòng nhập Nickname của bạn',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: myController,
                    decoration: InputDecoration(
                      labelText: 'Nhập Nickname',
                    ),
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: submit ? () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpOtpScreen()),
                    ) : null,
                    child: Text(
                      'Tiếp tục',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: Colors.yellow[700],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
