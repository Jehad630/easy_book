import 'package:easy_book/core/widget/Custom_Button.dart';
import 'package:flutter/material.dart';

class HomeViewbody extends StatelessWidget {
  const HomeViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      appBar: AppBar(
        actions: [Image.asset("assets/images/Group.png")],
        title: Text("EASY BOOK"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 205,

          decoration: BoxDecoration(
            color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("assets/images/Mask group.png"),
                  Container(),
                  Column(
                    children: [
                      Text("The psychology of money"),
                      Text(
                        "is the study of our behavior with .",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        children: [
                          CustomButton(
                            width: 100,
                            height: 40,
                            title: 'Grab Now',
                            backgroundColor: Color(0xffDE7773),
                            textcolor: Colors.white,
                          ),
                          CustomButton(
                            width: 100,
                            height: 40,
                            title: 'Learn More',
                            backgroundColor: Colors.amberAccent,
                            textcolor: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
