import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

class SignInWidget extends StatefulWidget {
  const SignInWidget({Key? key}) : super(key: key);

  @override
  _SignInWidgetState createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor:Colors.blue,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Color(0xFFBCFAFE)],
                stops: [0, 1],
                begin: AlignmentDirectional(0.37, -1),
                end: AlignmentDirectional(-0.37, 1),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      // image: DecorationImage(
                      //   fit: BoxFit.cover,
                      //   image: Image.asset(
                      //     'assets/images/__4_-removebg-preview_(1).png',
                      //   ).image,
                      // ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Color(0x5C9D9696),
                          offset: Offset(0, 2),
                          spreadRadius: 4,
                        )
                      ],
                      borderRadius: BorderRadius.circular(100),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                  child: SelectionArea(
                      child: Text(
                    'Welcome!',
                    style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 27,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.italic,
                        ),
                  )),
                ),
                SelectionArea(
                    child: Text(
                  'Create your account',
                  style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                      ),
                )),
                Align(
                  alignment: AlignmentDirectional(-0.05, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFFA6FCF1),
                              // image: DecorationImage(
                              //   fit: BoxFit.cover,
                              //   image: Image.asset(
                              //     'assets/images/Blue_and_Yellow_Colorful_School_Supplies_A4_Document_Page_Border.png',
                              //   ).image,
                              // ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(3, 0, 0, 0),
                          child: Container(
                            width: 250,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFEBEBEB),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 13, 0, 0),
                              child: SelectionArea(
                                  child: Text(
                                'Username or Email',
                                style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF615E5E),
                                      fontWeight: FontWeight.w300,
                                    ),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            // image: DecorationImage(
                            //   fit: BoxFit.cover,
                            //   image: Image.asset(
                            //     'assets/images/Blue_and_Yellow_Colorful_School_Supplies_A4_Document_Page_Border_(1).png',
                            //   ).image,
                            // ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(3, 0, 0, 0),
                        child: Container(
                          width: 250,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFFEBEBEB),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 13, 0, 0),
                            child: SelectionArea(
                                child: Text(
                              'Password',
                              style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF615E5E),
                                    fontWeight: FontWeight.w300,
                                  ),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            // image: DecorationImage(
                            //   fit: BoxFit.cover,
                            //   image: Image.asset(
                            //     'assets/images/Blue_and_Yellow_Colorful_School_Supplies_A4_Document_Page_Border_(1).png',
                            //   ).image,
                            // ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(3, 0, 0, 0),
                        child: Container(
                          width: 250,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFFEBEBEB),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 13, 0, 0),
                            child: SelectionArea(
                                child: Text(
                              'Password',
                              style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF615E5E),
                                    fontWeight: FontWeight.w300,
                                  ),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                      child: TextButton(
                      onPressed: () {},
                      child: Container(
                        color: Colors.green,
                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: const Text(
                          'Next',
                          style: TextStyle(color: Colors.white, fontSize: 13.0),
                        ),
                      ),
                    ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                      child: TextButton(
                      onPressed: () {},
                      child: Container(
                        color: Colors.green,
                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: const Text(
                          'Next',
                          style: TextStyle(color: Colors.white, fontSize: 13.0),
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
