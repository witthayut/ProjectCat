import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class InformationWidget extends StatefulWidget {
  const InformationWidget({Key? key}) : super(key: key);

  @override
  _InformationWidgetState createState() => _InformationWidgetState();
}

class _InformationWidgetState extends State<InformationWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  //Firebase
  final Future<FirebaseApp> firebase = Firebase.initializeApp();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7FDFF),
      body: SafeArea(
        child: GestureDetector(
          child: Column(
            children: [
              SizedBox(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(children: [
                      Container(
                        width: double.infinity,
                        height: 100,
                        decoration: const BoxDecoration(
                          color: Color(0xD39CE0FF),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(0),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Container(
                            width: 140,
                            height: 140,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/logo.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    /////TextField

                    const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Name',
                              contentPadding: EdgeInsets.all(8)),
                          keyboardType: TextInputType.text,
                        )),

                    /////
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(40, 40, 0, 0),
                      child: Container(
                        width: 318.5,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                              child: Text(
                                'Age',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 5, 0, 0),
                              child: Container(
                                width: 295.5,
                                height: 47.8,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 40, 40, 0),
                      child: Container(
                        width: 318.5,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                              child: Text(
                                'Gender',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 5, 0, 0),
                              child: Container(
                                width: 295.5,
                                height: 47.8,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsetsDirectional.fromSTEB(40, 40, 0, 0),
                    //   child: Container(
                    //     width: 318.5,
                    //     height: 100,
                    //     decoration: BoxDecoration(
                    //       color: Colors.blue,
                    //       boxShadow: [
                    //         BoxShadow(
                    //           blurRadius: 4,
                    //           color: Color(0x33000000),
                    //           offset: Offset(0, 2),
                    //         )
                    //       ],
                    //       borderRadius: BorderRadius.circular(13),
                    //     ),
                    //     child: Column(
                    //       mainAxisSize: MainAxisSize.max,
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Padding(
                    //           padding:
                    //               EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                    //           child: Text(
                    //             'weight',
                    //             style: TextStyle(
                    //               fontFamily: 'Poppins',
                    //               fontSize: 17,
                    //             ),
                    //           ),
                    //         ),
                    //         Padding(
                    //           padding:
                    //               EdgeInsetsDirectional.fromSTEB(10, 7, 0, 0),
                    //           child: Container(
                    //             width: 295.5,
                    //             height: 47.8,
                    //             decoration: BoxDecoration(
                    //               color: Colors.white,
                    //               borderRadius: BorderRadius.circular(10),
                    //             ),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Container(
                              color: const Color.fromARGB(255, 50, 50, 50),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              child: const Text(
                                'Back',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                150, 0, 0, 0),
                            child: TextButton(
                              onPressed: () {},
                              child: Container(
                                color: const Color.fromARGB(255, 50, 50, 50),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                child: const Text(
                                  'Next',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
