import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutterpm_ticketkonser/Create_acc.dart';
import 'package:flutterpm_ticketkonser/login2.dart';

class loginview extends StatelessWidget {
  const loginview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 255, 255),
        body: Stack(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 60.0, left: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Buat akun untuk nikmati\nDiskon Terbesar!',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                        letterSpacing: 1.8,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Kamu cukup isi persyaratannya-',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 250, 100, 77),
                        letterSpacing: 2.0,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'nya aja, kok.',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 250, 100, 77),
                        letterSpacing: 1.8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Image(
                image: AssetImage('assets/images/image6.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 260.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/images/image3.png'),
                      fit: BoxFit.cover,
                      opacity: 0.2,
                    )),
                height: 700,
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 18.0, left: 18, right: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Nomor Ponsel atau Email',
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 89, 89, 89),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter your email address';
                          }
                          return null;
                        },
                        onSaved: (value) {},
                      ),
                      SizedBox(height: 14),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Create_acc(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 250, 100, 77),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 380.0, minHeight: 58.0),
                          alignment: Alignment.center,
                          child: Text(
                            'Buat Akun',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 14),
                      Column(
                        children: [
                          Container(
                            width: 199,
                            height: 29,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Divider(
                                    color: Color.fromARGB(89, 89, 89, 1),
                                    thickness: 1,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(
                                    'Atau gunakan akun',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Divider(
                                  color: Color.fromARGB(89, 89, 89, 1),
                                  thickness: 1,
                                )),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(1),
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  'assets/images/image4.png',
                                  height: 45,
                                ),
                              ),
                              SizedBox(width: 23),
                              Container(
                                width: 60,
                                height: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                ),
                                child: Image.asset(
                                  'assets/images/image5.png',
                                  height: 32,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Udah punya akun?',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(width: 10),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => login2(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Masuk aja!',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 250, 100, 77),
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 160),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        'Dengan membuat akun kamu menyetujui'),
                                TextSpan(
                                    text: ' Syarat &',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 250, 100, 77),
                                      fontWeight: FontWeight.bold,
                                    )),
                                TextSpan(
                                  text: '\nKetentuan',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 250, 100, 77),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: ' dan ',
                                ),
                                TextSpan(
                                  text: ' Kebijkan Privasi ',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 250, 100, 77),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Festivalika',
                                )
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
