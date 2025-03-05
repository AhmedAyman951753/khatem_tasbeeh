import 'package:flutter/material.dart';
import 'package:khatem_tasbeeh/Categories/AppColors.dart';
import 'package:khatem_tasbeeh/Categories/AppImages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(
        children: [
          Image.asset(AppImages.tasbeeh),
          SizedBox(height: 70),
          Container(
            padding: EdgeInsets.all(20),
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100), bottomRight: Radius.circular(100), topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 5),
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: AppColors.black, width: 5)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(counter.toString(), style: TextStyle(fontSize: 20))
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 25),
                    Expanded(
                      child: InkWell(
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white70, width: 2),
                            boxShadow: [BoxShadow(color: AppColors.black, spreadRadius: 3, blurRadius: 3, offset: Offset(0, 1))]
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            counter++;
                          });
                        },
                      ),
                    ),
                    Column(
                      children: [
                        InkWell(
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white70, width: 2),
                                boxShadow: [BoxShadow(color: AppColors.black, spreadRadius: 3, blurRadius: 3, offset: Offset(0, 1))]
                            ),
                          ),
                          onTap: ()
                          {
                            setState(() {
                              counter = 0;
                            });
                          },
                        ),
                        SizedBox(height: 5),
                        Text("Reset", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
