import 'package:flutter/material.dart';
import 'package:todo/forgot.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xffeeeeee),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  right: 150,
                  top: -70,
                  child: Container(
                    height: 250,
                    child: Image.asset("assets/shape.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200, bottom: 30),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'Welcome Back!',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 30,),
                        SizedBox(
                          width: 185,
                          height: 185,
                          child: Image.asset("assets/forgot.png"),
                        ),
                        SizedBox(height: 30,),
                        Container(
                          width: 285,
                          height: 45,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(52),
                            ),
                          ),
                          child: SizedBox(
                            width: 250,height: 40,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10,left: 20),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter you e-mail',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: 285,
                          height: 45,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(52),
                            ),
                          ),
                          child: SizedBox(
                            width: 250,height: 40,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10,left: 20),
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter your password',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text("Forgot your password?",style: TextStyle(fontSize: 16,color: Colors.blue),),
                        SizedBox(height: 40,),



                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Forgot()));
                          },
                          child: Container(
                            width: 325,
                            height: 56,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.blue),
                            child: Center(
                              child: Text(
                                'Sign In',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don’t have an account?",style: TextStyle(fontSize: 13),),
                              Text(" Sign Up!",style: TextStyle(fontSize: 13,color: Colors.blue,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
