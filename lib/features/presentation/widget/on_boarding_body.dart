import 'package:flutter/material.dart';
class OnBoardingviewBody extends StatelessWidget {
  const OnBoardingviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: MediaQuery.of(context).size.height * 0.1,
          right: 30,
          child: Text("Skip",
            style: TextStyle(
              color:const Color(0xff898989),
              fontSize: 15,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold, ), 
              textAlign: TextAlign.left,
          ),
        )
        
      ],
    );
  }
}