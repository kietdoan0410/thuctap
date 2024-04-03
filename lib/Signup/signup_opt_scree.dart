import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kiet_first_app/Signup/signup_nickname_screen.dart';


class SignUpOtpScreen extends StatefulWidget {
  const SignUpOtpScreen({super.key});

  @override
  State<SignUpOtpScreen> createState() => _SignUpOtpScreenState();
}

class _SignUpOtpScreenState extends State<SignUpOtpScreen> {
  String dropdownValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Đăng Ký'),
        leading: GestureDetector(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpNickNameScreen()),
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
                  'Vui lòng nhập ba số nhận diện',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Form(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 60,
                        width: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (value) {
                            if(value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,],
                        ),
                      ),
                      SizedBox(width: 10,),
                      SizedBox(
                        height: 60,
                        width: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (value) {
                            if(value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,],
                        ),
                      ),
                      SizedBox(width: 10,),
                      SizedBox(
                        height: 60,
                        width: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (value) {
                            if(value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Row(
                        children: [
                          Icon(Icons.info),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Xin ba số chưa bị trùng', style: TextStyle(
                    color: Colors.blue[700],
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),),
                ),
                SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      onPressed:  () {},
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
