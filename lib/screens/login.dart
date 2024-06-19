import 'package:flutter/material.dart';
import 'package:indicators/helpers/ColorsSys.dart';
import 'package:indicators/screens/home.dart';
import 'package:indicators/screens/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const route = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailcontroller = TextEditingController();
  final pwcontroller = TextEditingController();
  final loginkey = GlobalKey<FormFieldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Image(
              image: AssetImage('assets/images/wavy.png'),
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            flex: 4,
            child: Form(
              key: loginkey,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Login",
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: emailcontroller,
                      decoration: InputDecoration(
                          labelText: 'Email Address',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: pwcontroller,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 190),
                      child: Text('Forgot Password?'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/home');
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.orange)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: ColorSys.primary,
                            height: 20,
                            thickness: 1.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('OR'),
                        ),
                        Expanded(
                          child: Divider(
                            color: ColorSys.primary,
                            height: 20,
                            thickness: 1.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, bottom: 5, top: 5, right: 10),
                                child: Image(
                                  image: AssetImage('assets/images/google.png'),
                                  height: 30,
                                  width: 30,
                                )),
                            Text(
                              'Continue with Google',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: ColorSys.primary),
                            ),
                          ],
                        )),
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("You don't have an account?",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: ColorSys.primary)),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, SignupPage.route);
                              },
                              child: Text("SignUp",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.orange)),
                            ),
                          ]),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
