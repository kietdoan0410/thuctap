import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:kiet_first_app/main.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  String isSelected = '';

  setButton(String value) {
    setState(() {
      isSelected = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Bảo Mật'),
        leading: GestureDetector(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                ),
            child: Icon(Icons.arrow_back_ios)),
      ),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              child: Center(child: Text('Trong những trường hợp cài lại máy, đổi máy, lấy lại tài khoản cá nhân của bạn, chúng tôi sẽ gửi mã xác nhận qua địa chỉ:',
              textAlign: TextAlign.center,
              ),
              ),
            ),

            Container(
              padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              child: Row(
                children: [
                SizedBox(
                  width: 155,
                  child: ElevatedButton(
                  onPressed: () {
                    setButton('isPhone');
                  },
                  child: Text(
                    'Phone',
                    style: TextStyle(
                      color: isSelected == 'isPhone' ? Colors.blue[800]:Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: isSelected == 'isPhone' ? Colors.blue[100]: Colors.grey[100],
                  
                    ),
                  ),
                ),
                SizedBox(width: 20),

                SizedBox(
                  width: 155,
                  child: ElevatedButton(
                    onPressed: () {
                      setButton('isMail');
                    },
                    child: Text(
                      'Email',
                      style: TextStyle(
                        color: isSelected == 'isMail' ?  Colors.blue[800]:Colors.black,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                     
                        shape: StadiumBorder(),
                        backgroundColor: isSelected == 'isMail' ? Colors.blue[100]:Colors.grey[100],
                  
                      ),
                    ),
                ),


                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              child: TextFormField(
                decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Nhập số điện thoại',
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              child: SizedBox(
                  width: 355,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'lưu',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                     
                        shape: StadiumBorder(),
                        backgroundColor: Colors.grey[300],
                  
                      ),
                    ),
                ),
            ),

            ],
        ),),
    );
  }
}