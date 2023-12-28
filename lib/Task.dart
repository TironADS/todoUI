import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}
bool isChecked=false;

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 350,
                  color: Colors.blue,
                ),
                Positioned(
                  right: 150,
                  top: -70,
                  child: Container(
                    height: 250,
                    child: Image.asset("assets/shape.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 165, bottom: 30),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset("assets/pp.png"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Welcome back, Ozer!',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(
                            color: Color(0xFF63D4FF),
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 200),
                          child: Text(
                            "Good afternoon",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600]),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset("assets/clock.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 200),
                          child: Text(
                            "Tasks List",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600]),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: 220,
                          width: 330,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Daily Tasks',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey[600],fontWeight: FontWeight.bold),
                                    ),
                                    Icon(Icons.add_circle_outline_rounded,color: Colors.blue,)
                                  ],
                                ),
                                Container(
                                  child: Column(
                                    children: [

                                      SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          Checkbox(
                                              activeColor: Colors.blue,
                                              value: isChecked,
                                              onChanged: (value) {
                                                setState(() {
                                                  isChecked = !isChecked;
                                                });
                                              }),
                                          Text(
                                            'Kazi Farmas',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 10,),

                                      SizedBox(height: 10,),

                                      SizedBox(height: 10,),

                                      SizedBox(height: 10,),


                                    ],
                                  ),
                                )
                              ],
                            ),
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
