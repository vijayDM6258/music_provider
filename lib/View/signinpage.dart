import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController textEditingController = TextEditingController();

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
            Text.rich(
              TextSpan(
                text: "Create",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 50),
              ),
            ),
            Text(
              "account",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "E-mail",
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
                  "Sign Up",
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
