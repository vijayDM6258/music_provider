import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 140,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color(0xff38B4FE),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.elliptical(450, 300),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 180,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Color(0xff3196F8),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.elliptical(391, 300),
                    ),
                  ),
                ),
                Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Color(0xff1F6AC7),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.elliptical(200, 200),
                    ),
                  ),
                ),
              ],
            ),
            CircleAvatar(
              backgroundColor: Colors.blue.shade50,
              radius: 50,
              child: FlutterLogo(
                size: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "User Name",
                  suffixIcon: Icon(Icons.mail),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: Icon(Icons.lock_outline),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 250,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadiusDirectional.circular(10),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
