import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:auto_reload/auto_reload.dart';

class PetDetail extends StatefulWidget {
  const PetDetail({super.key});

  @override
  State<PetDetail> createState() => _PetDetailState();
}

class _PetDetailState extends State<PetDetail> {
  int _countOfReload = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      _countOfReload++;
    });
  }

  Query refQ = FirebaseDatabase.instance.ref().child('user');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 231, 255),
      body: SafeArea(
          child: FirebaseAnimatedList(
        query: refQ,
        itemBuilder: (context, snapshot, animation, index) {
          Map userMap = snapshot.value as Map;
          return ShowDisplay(userMap: userMap);
        },
      )),
    );
  }

  Widget ShowDisplay({required Map userMap}) {
    return SafeArea(
      child: GestureDetector(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 80,
              decoration: const BoxDecoration(
                color: Color.fromARGB(210, 101, 209, 255),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                      size: 40,
                    ),
                  ),
                  Align(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: SelectionArea(
                          child: Text(
                        'Pet Details',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 25,
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(32, 32, 32, 0),
              child: Container(
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                      spreadRadius: 2,
                    )
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: SelectionArea(
                          child: Text(
                        userMap['name'],
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 35,
                        ),
                      )),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1, 0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: SelectionArea(
                            child: Text(
                          '${userMap['Gender']}  :  ${userMap['age']} years',
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(32, 16, 32, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                            spreadRadius: 1,
                          )
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 15, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: const [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 5, 0, 0),
                                  child: SelectionArea(
                                      child: Text(
                                    'Blood\nPressure',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      23, 0, 0, 0),
                                  child: Icon(
                                    Icons.favorite,
                                    color: Color(0xFFF23333),
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 5, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      45, 20, 0, 0),
                                  child: SelectionArea(
                                      child: Text(
                                    userMap['avgBmp'].toString(),
                                    style: const TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF020202),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 30,
                                    ),
                                  )),
                                ),
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      3, 28, 0, 0),
                                  child: SelectionArea(
                                      child: Text(
                                    'bpm',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                            spreadRadius: 1,
                          )
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 15, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: const [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 5, 0, 0),
                                  child: SelectionArea(
                                      child: Text(
                                    'Tem\nperature',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      34, 0, 0, 0),
                                  child: Icon(
                                    Icons.thermostat_outlined,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      37, 20, 0, 0),
                                  child: SelectionArea(
                                      child: Text(
                                    userMap['temp'].toStringAsFixed(1),
                                    style: const TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF020202),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 30,
                                    ),
                                  )),
                                ),
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      3, 28, 0, 0),
                                  child: SelectionArea(
                                      child: Text(
                                    '°C',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF020202),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18,
                                    ),
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 170,
                    height: 170,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x33000000),
                          offset: Offset(0, 2),
                          spreadRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: const [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(15, 5, 0, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'Oxygen\nSaturation',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(23, 0, 0, 0),
                                child: Icon(
                                  Icons.cloud_circle,
                                  color: Color(0xFF5FCFFF),
                                  size: 34,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    60, 20, 0, 0),
                                child: SelectionArea(
                                    child: Text(
                                  userMap['o2'].toString(),
                                  style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF020202),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 30,
                                  ),
                                )),
                              ),
                              const Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(3, 28, 0, 0),
                                child: SelectionArea(
                                    child: Text(
                                  '%',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                  ),
                                )),
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
          ],
        ),
      ),
    );
  }
}
