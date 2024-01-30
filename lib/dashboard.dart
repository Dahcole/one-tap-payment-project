import 'package:flutter/material.dart';
import 'package:project/successful.dart';


void main() {
  runApp(const MaterialApp(
    home: Dashboard(),
  ));
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

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
                            margin: const EdgeInsets.fromLTRB(55, 10, 0, 0),
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
                                  backgroundColor: Color.fromRGBO(125, 96, 220, 1),
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
                  margin: const EdgeInsets.fromLTRB(0, 50, 30, 0),
                  child: RichText(
                    text:  const TextSpan(
                        children: <TextSpan>[
                          TextSpan(text:
                          ' Good morning, ',
                            style: TextStyle(
                              color: Color.fromRGBO(125, 96, 220, 1),
                              fontSize: 20,
                              fontFamily: 'Lato',
                            ),
                          ),
                          TextSpan(text:
                          'Franklyn',
                            style: TextStyle(
                                color: Color.fromRGBO(125, 96, 220, 1),
                              fontSize: 20,
                              fontFamily: 'Lato',
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ]
                    ),
                  )
                ),
                Container(
                  height: 60,
                  width: 60,
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/fets_logo.png"),
                    ),
                  ),
                ),
                Container(
                  height: 25,
                  width: 25,
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.fromLTRB(30, 50, 0, 0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img.png"),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: SizedBox(
                    width: 80,
                    height: 60,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                        ),
                        onPressed: () {},
                        child:
                         const Column(
                             mainAxisSize: MainAxisSize.min,
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                               Icon(
                                Icons.contact_phone,
                                color: Colors.white,
                              ),
                              Text(
                                'Airtime',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ]
                        )
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: SizedBox(
                    width: 80,
                    height: 60,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                        ),
                        onPressed: () {},
                        child:
                        const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.signal_cellular_connected_no_internet_4_bar,
                                color: Colors.white,
                              ),
                              Text(
                                'Data',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ]
                        )
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: SizedBox(
                    width: 80,
                    height: 60,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                        ),
                        onPressed: () {},
                        child:
                        const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.electric_bolt_outlined,
                                color: Colors.white,
                              ),
                              Text(
                                'Electricity',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ]
                        )
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: SizedBox(
                    width: 80,
                    height: 60,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                        ),
                        onPressed: () {},
                        child:
                        const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.tv_sharp,
                                color: Colors.white,
                              ),
                              Text(
                                'Pay TV',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ]
                        )
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: SizedBox(
                    width: 80,
                    height: 60,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                        ),
                        onPressed: () {},
                        child:
                        const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.attach_money,
                                color: Colors.white,
                              ),
                              Text(
                                'Bet Account',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ]
                        )
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: SizedBox(
                    width: 80,
                    height: 60,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                        ),
                        onPressed: () {},
                        child:
                        const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.send_to_mobile,
                                color: Colors.white,
                              ),
                              Text(
                                'Send Money',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ]
                        )
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: SizedBox(
                    width: 80,
                    height: 60,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                        ),
                        onPressed: () {},
                        child:
                        const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.call_received,
                                color: Colors.white,
                              ),
                              Text(
                                'Add Money',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ]
                        )
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: SizedBox(
                    width: 80,
                    height: 60,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                        ),
                        onPressed: () {},
                        child:
                        const Column(
                            children: [
                              Icon(
                                Icons.money_sharp,
                                color: Colors.white,
                              ),
                              Text(
                                'Loans',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ]
                        )
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: SizedBox(
                    width: 80,
                    height: 60,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                        ),
                        onPressed: () {},
                        child:
                        const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'R',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Remitta',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ]
                        )
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: SizedBox(
                    width: 80,
                    height: 60,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                        ),
                        onPressed: () {},
                        child:
                        const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.qr_code,
                                color: Colors.white,
                              ),
                              Text(
                                'Scan & Pay',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ]
                        )
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: SizedBox(
                    width: 80,
                    height: 60,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                        ),
                        onPressed: () {},
                        child:
                        const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.school,
                                color: Colors.white,
                              ),
                              Text(
                                'Education',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ]
                        )
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: SizedBox(
                    width: 80,
                    height: 60,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                        ),
                        onPressed: () {},
                        child:
                        const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.history,
                                color: Colors.white,
                              ),
                              Text(
                                'History',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ]
                        )
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: const Text(
                    '1-Tap Payment',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(125, 96, 220, 1),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.fromLTRB(190, 20, 0, 0),
                  child:
                    TextButton.icon(onPressed: () {},
                        icon:  const Icon(
                            color: Color(0xFF0D47A1),
                            size: 20.0,
                            Icons.edit
                        ),
                        label: const Text(
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF0D47A1),
                            ),
                            'Edit'
                        ),
                    ),
                    )
                  ],
            ),
            Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: SizedBox(
                width: 80,
                height: 70,
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                    ),
                    onPressed: () {
                      PIN(context);
                    },
                    child:
                    Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.note_alt_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                          child: const Text(
                            'MTN Topup',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            child: const Text(
                              '₦200',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ]
                    )
                ),
              ),
            ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: SizedBox(
                      width: 80,
                      height: 70,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                          ),
                          onPressed: () {
                            PIN(context);
                          },
                          child:
                          Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.note_alt_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                Container(
                                  alignment: Alignment.topCenter,
                                  child: const Text(
                                    'IBEDC',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topCenter,
                                  child: const Text(
                                    ' ₦20000',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ]
                          ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: SizedBox(
                      width: 80,
                      height: 70,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                        ),
                        onPressed: () {
                          PIN(context);
                        },
                        child:
                        Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.note_alt_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                child: const Text(
                                  'MTN Data',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                child: const Text(
                                  '₦2000',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: SizedBox(
                      width: 80,
                      height: 70,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                        ),
                        onPressed: () {
                          PIN(context);
                        },
                        child:
                        Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.note_alt_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                child: const Text(
                                  'DSTV',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                child: const Text(
                                  '₦15000',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                  ),
            ]
        ),
            Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: SizedBox(
                      width: 80,
                      height: 70,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                          ),
                          onPressed: () {
                            PIN(context);
                          },
                          child:
                          Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.note_alt_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                Container(
                                  alignment: Alignment.topCenter,
                                  child: const Text(
                                    'MTN Data',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topCenter,
                                  child: const Text(
                                    '₦1000',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                )
                              ]
                          )
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: SizedBox(
                      width: 80,
                      height: 70,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                        ),
                        onPressed: () {
                          PIN(context);
                        },
                        child:
                        Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.note_alt_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                child: const Text(
                                  'GOTV',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                child: const Text(
                                  '₦5000',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: SizedBox(
                      width: 80,
                      height: 70,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                        ),
                        onPressed: () {
                          PIN(context);
                        },
                        child:
                        Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.note_alt_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                child: const Text(
                                  'GLO Data',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),Container(
                                alignment: Alignment.topCenter,
                                child: const Text(
                                  '₦2000',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: SizedBox(
                      width: 80,
                      height: 70,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                        ),
                        onPressed: () {
                          PIN(context);
                        },
                        child:
                        Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.note_alt_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                child: const Text(
                                  'Startimes',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                child: const Text(
                                  '₦5000',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                  ),
                ]
            ),
            Container(
              alignment: Alignment.center,
              height: 310,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/fets.png"),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: IconButton(
                      iconSize: 35,
                      color: const Color.fromRGBO(125, 96, 220, 1),
                      icon: const Icon(Icons.home_outlined),
                      onPressed: () {},
                    ),
                  ),
                     Container(
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: IconButton(
                        iconSize: 35,
                        color: const Color.fromRGBO(125, 96, 220, 1),
                        icon: const Icon(Icons.qr_code),
                        onPressed: () {},
                      ),
                    ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: IconButton(
                    iconSize: 35,
                    color: const Color.fromRGBO(125, 96, 220, 1),
                    icon: const Icon(Icons.credit_card_rounded),
                    onPressed: () {},
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: IconButton(
                    iconSize: 35,
                    color: const Color.fromRGBO(125, 96, 220, 1),
                    icon: const Icon(Icons.headset_mic),
                    onPressed: () {},
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: IconButton(
                    iconSize: 35,
                    color: const Color.fromRGBO(125, 96, 220, 1),
                    icon: const Icon(Icons.person),
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ],
        )
    );
  }
}