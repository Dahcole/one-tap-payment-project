import 'package:flutter/material.dart';
import 'package:project/dashboard.dart';


void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Successful(),
  ));
}

class Successful extends StatelessWidget {
  const Successful({Key? key}) : super(key: key);

  void navigateDashboard(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Dashboard()),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.fromLTRB(10, 50, 0, 0),
                child: IconButton(
                  iconSize: 35,
                  color: const Color.fromRGBO(125, 96, 220, 1),
                  icon: const Icon(Icons.cancel_outlined),
                  onPressed: () {
                    navigateDashboard(context);
                  },
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: const Icon(
                  Icons.check_circle,
                  color:  Color.fromRGBO(96, 194, 94, 1),
                  size: 150,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/mtn.png"),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.fromLTRB(10, 50, 0, 0),
                    child: const Text(
                      'MTN /',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: 'Inter'
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.fromLTRB(5, 50, 250, 0),
                    child: const Text(
                      'Data Bundle',
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Inter'
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                width: 380,
                height: 110,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: const Text(
                            'Phone',
                            style: TextStyle(
                                fontSize: 11,
                                fontFamily: 'Inter',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.fromLTRB(5, 20, 230, 0),
                          child: const Text(
                            ' / 07043624154',
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Inter'
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
                          margin: const EdgeInsets.fromLTRB(0, 15, 220, 0),
                          child: const Text(
                            '1.5GB, 30 day data plan',
                            style: TextStyle(
                                fontSize: 11,
                                fontFamily: 'Inter'
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
                          height: 12,
                          width: 12,
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/arrow.png"),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.fromLTRB(5, 15, 0, 0),
                          child: const Text(
                            '₦1,000.00',
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Lato',
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.fromLTRB(0, 15, 200, 0),
                          child: const Text(
                            ' / 30 days',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Lato'
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 120, 0, 0),
                alignment: Alignment.center,
                height: 60,
                width: 380,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            backgroundColor: const Color.fromRGBO(125, 96, 220, 1),
                          ),
                          onPressed: () {},
                          child: const Text(''),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: const Text(
                        'Swipe to share receipt',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 100, 0, 0),
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
                    margin: const EdgeInsets.fromLTRB(20, 100, 0, 0),
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
                    margin: const EdgeInsets.fromLTRB(20, 100, 0, 0),
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
                    margin: const EdgeInsets.fromLTRB(20, 100, 0, 0),
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
              )
        ]
      )
    );
  }
}