import 'package:flutter/material.dart';
import 'package:kiet_first_app/main.dart';
import 'package:kiet_first_app/Signup/signup_nickname_screen.dart';

enum SampleCountry {
  countryOne,
  countryTwo,
  countryThree,
  countryFour,
  countryFive
}

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  SampleCountry? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Đăng Ký'),
        leading: GestureDetector(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                ),
            child: Icon(Icons.arrow_back_ios)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: EdgeInsets.all(18),
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
                  'Vui lòng chọn Quốc gia',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),

                TextField(
                  
                  decoration: InputDecoration(
                    prefix: Icon(Icons.flag_rounded),
                    suffix: PopupMenuButton<SampleCountry>(
                        initialValue: selectedCountry,
                        onSelected: (SampleCountry item) {
                          setState(() {
                            print('$selectedCountry');
                            selectedCountry = item;
                          });
                        },
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuEntry<SampleCountry>>[
                          const PopupMenuItem<SampleCountry>(
                            value: SampleCountry.countryOne,
                            child: Row(
                              children: [
                                Icon(Icons.flag),
                                Text('Vietnam'),
                              ],
                            ),
                          ),
                          const PopupMenuItem<SampleCountry>(
                            value: SampleCountry.countryTwo,
                            child: Text('China'),
                          ),
                          const PopupMenuItem<SampleCountry>(
                            value: SampleCountry.countryThree,
                            child: Text('USA'),
                          ),
                          const PopupMenuItem<SampleCountry>(
                            value: SampleCountry.countryFour,
                            child: Text('France'),
                          ),
                          const PopupMenuItem<SampleCountry>(
                            value: SampleCountry.countryFive,
                            child: Text('Brazil'),
                          ),
                        ],
                      ),
                  ),
                ),

                SizedBox(height: 35,),
                // Padding(
                //   padding: const EdgeInsets.all(10.0),
                //   child: Row(
                //     children: [
                //       SizedBox(
                //         width: 10,
                //       ),
                //       Icon(Icons.flag_rounded),
                //       SizedBox(
                //         width: 15,
                //       ),
                //       Expanded(
                //         child: Text(
                //           'Vietnam',
                //           style: TextStyle(
                //             fontSize: 14,
                //             fontWeight: FontWeight.w400,
                //           ),
                //         ),
                //       ),
                //       PopupMenuButton<SampleCountry>(
                //         initialValue: selectedCountry,
                //         onSelected: (SampleCountry item) {
                //           setState(() {
                //             selectedCountry = item;
                //           });
                //         },
                //         itemBuilder: (BuildContext context) =>
                //             <PopupMenuEntry<SampleCountry>>[
                //           const PopupMenuItem<SampleCountry>(
                //             value: SampleCountry.countryOne,
                //             child: Row(
                //               children: [
                //                 Icon(Icons.flag),
                //                 Text('Vietnam'),
                //               ],
                //             ),
                //           ),
                //           const PopupMenuItem<SampleCountry>(
                //             value: SampleCountry.countryTwo,
                //             child: Text('China'),
                //           ),
                //           const PopupMenuItem<SampleCountry>(
                //             value: SampleCountry.countryThree,
                //             child: Text('USA'),
                //           ),
                //           const PopupMenuItem<SampleCountry>(
                //             value: SampleCountry.countryFour,
                //             child: Text('France'),
                //           ),
                //           const PopupMenuItem<SampleCountry>(
                //             value: SampleCountry.countryFive,
                //             child: Text('Brazil'),
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),





                // Padding(
                //   padding: const EdgeInsets.all(10.0),
                //   child: DropdownMenu<String>(
                //     width: 380,
                //     initialSelection: list.first,
                //     onSelected: (String? value) {
                //       setState(() {
                //         dropdownValue = value!;
                //       });
                //     },
                //     dropdownMenuEntries:
                //         list.map<DropdownMenuEntry<String>>((String value) {
                //       return DropdownMenuEntry<String>(
                //           value: value, label: value);
                //     }).toList(),
                //   ),
                // ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpNickNameScreen()),
                    ),
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
