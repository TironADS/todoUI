import 'package:flutter/material.dart';
import 'package:todo/onboarding.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: Stack(
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
            padding: const EdgeInsets.only(top: 200,bottom: 30),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 190,
                    width: 185,
                    child: Image.asset('assets/splash-todo.png'),
                  ),
                  Text(
                    'Get things done with Todo',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 220,
                    height: 100,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor tristique enim ornare malesuada. Sapien sed turpis nullam nascetur at et. Vulputate urna interdum egestas id molestie cum.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Onboarding()));
                    },
                    child: Container(
                      width: 325,
                      height: 56,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),color: Colors.blue
                      ),
                      child: Center(
                        child: Text(
                          'Get Started',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
