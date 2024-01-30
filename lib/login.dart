import 'package:flutter/material.dart';
import 'package:project/dashboard.dart';
import 'package:project/successful.dart';


void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login(),
  ));
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  void navigateToDashboard(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Dashboard()),
    );
  }
  void navigateSuccessful(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Successful()),
    );
  }

  void PIN(BuildContext context){
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {

          List<TextEditingController> textControllers = List.generate(
            4, // Number of text fields
                (index) => TextEditingController(),
          );

          List<FocusNode> focusNodes = List.generate(
            4, // Number of text fields
                (index) => FocusNode(),
          );

          int currentTextFieldIndex = 0;



          void displayNumberOnCurrentTextField(String number) {
            if (currentTextFieldIndex < textControllers.length) {
              textControllers[currentTextFieldIndex].text = number;
              currentTextFieldIndex++;

              // Move focus to the next TextField if available
              if (currentTextFieldIndex < textControllers.length) {
                // Request focus on the next TextField
                FocusScope.of(context).requestFocus(focusNodes[currentTextFieldIndex]);
              }
            }
          }

          return Container(
            height: 400,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
              ),
            ),
            child : Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: const Text(
                    'Enter your PIN to authorize transaction',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Inter',
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Row(
                  children: [
                    for (int i = 0; i < textControllers.length; i++)
                      Container(
                        margin: const EdgeInsets.fromLTRB(55, 20, 0, 0),
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: TextFormField(
                            readOnly: true,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            controller: textControllers[i],
                            focusNode: focusNodes[i],
                            obscureText: true,
                          ),
                        ),
                      ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                      child: SizedBox(
                        width: 120,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            displayNumberOnCurrentTextField('1');
                          },
                          child: const Text(
                            '1',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: 'Lato',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: SizedBox(
                        width: 120,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            displayNumberOnCurrentTextField('2');
                          },
                          child: const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '2',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontFamily: 'Lato',
                                ),
                              ),
                              Text(
                                'ABC',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Lato',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: SizedBox(
                        width: 120,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            displayNumberOnCurrentTextField('3');
                          },
                          child: const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '3',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontFamily: 'Lato',
                                ),
                              ),
                              Text(
                                'DEF',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Lato',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                      child: SizedBox(
                        width: 120,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            displayNumberOnCurrentTextField('4');
                          },
                          child: const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '3',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontFamily: 'Lato',
                                ),
                              ),
                              Text(
                                'GHI',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Lato',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: SizedBox(
                        width: 120,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            displayNumberOnCurrentTextField('5');
                          },
                          child: const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '5',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontFamily: 'Lato',
                                ),
                              ),
                              Text(
                                'JKL',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Lato',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: SizedBox(
                        width: 120,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            displayNumberOnCurrentTextField('6');
                          },
                          child: const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '6',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontFamily: 'Lato',
                                ),
                              ),
                              Text(
                                'MNO',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Lato',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                      child: SizedBox(
                        width: 120,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            displayNumberOnCurrentTextField('7');
                          },
                          child: const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '7',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontFamily: 'Lato',
                                ),
                              ),
                              Text(
                                'PQRS',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Lato',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: SizedBox(
                        width: 120,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            displayNumberOnCurrentTextField('8');
                          },
                          child: const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '8',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontFamily: 'Lato',
                                ),
                              ),
                              Text(
                                'TUV',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Lato',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: SizedBox(
                        width: 120,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            displayNumberOnCurrentTextField('9');
                          },
                          child: const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '9',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontFamily: 'Lato',
                                ),
                              ),
                              Text(
                                'WXYZ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Lato',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(25, 20, 0, 0),
                      child: SizedBox(
                        width: 120,
                        height: 60,
                        child: IconButton(
                          icon: const Icon(Icons.backspace_outlined),
                          onPressed: () {
                          },
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: SizedBox(
                        width: 120,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            displayNumberOnCurrentTextField('0');
                          },
                          child: const Text(
                            '0',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: 'Lato',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: SizedBox(
                        width: 120,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                          ),
                          onPressed: () {
                            navigateSuccessful(context);
                          },
                          child: const Text(
                            'OK',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'Lato',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:
        Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/fets_logo.png"),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.fromLTRB(240, 30, 0, 0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/tap.png"),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children:[
                Container(
                  alignment: Alignment.topCenter,
                  margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: const Text(
                    'Welcome back, Franklyn',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0D47A1),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                  child: const Text(
                    'Enter your PIN',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF0D47A1),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: const SizedBox(
                      height: 45,
                      width: 45,
                      child: TextField(
                        readOnly: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        obscureText: true,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 15, 0, 0),
                    child: const SizedBox(
                      height: 45,
                      width: 45,
                      child: TextField(
                        readOnly: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        obscureText: true,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 15, 0, 0),
                    child: const SizedBox(
                      height: 45,
                      width: 45,
                      child: TextField(
                        readOnly: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        obscureText: true,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 15, 0, 0),
                    child: const SizedBox(
                      height: 45,
                      width: 45,
                      child: TextField(
                        readOnly: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        obscureText: true,
                        autofocus: true,
                      ),
                    ),
                  ),
                ],
                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot PIN?',
                      style: TextStyle(
                        color: Color(0xFF0D47A1),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 350,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                      ),
                      onPressed: () {
                        navigateToDashboard(context);
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Not Franklyn?',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Switch Account',
                        style: TextStyle(
                          color: Color(0xFF0D47A1),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ]),
                Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.fromLTRB(90, 300, 0, 0),
                    child: SizedBox(
                      width: 190,
                      height: 60,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                          onPressed: () {
                            PIN(context);
                          },
                          child:
                          const Row(
                              children: [
                                Text(
                                  '  1-TAP Payments',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                ),
                                Icon(
                                  Icons.touch_app,
                                ),
                              ]
                          )
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.fromLTRB(50, 250, 0, 0),
                    child: IconButton(
                      iconSize: 40,
                      color: const Color.fromRGBO(125, 96, 220, 1),
                      icon: const Icon(Icons.settings),
                      onPressed: () {},
                    ),
                  ),
                ]
                )
              ],
            )
          ],
        )
    );
  }
}