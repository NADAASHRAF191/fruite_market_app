import 'package:flutter/material.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? fadingAnimation;
  @override
  void initState() {
    super.initState();
    animationController =
    AnimationController(vsync: this,duration: Duration(milliseconds: 600));
    fadingAnimation=
    Tween<double>(begin: 0.2,end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          
          AnimatedBuilder(
            animation: fadingAnimation!,
            builder: (context, _) => Opacity(
              opacity: fadingAnimation!.value,
              child: Text(
                "Fruite Market",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Image.asset(
            "assets/images/splash_view_image.png",
          ),
        ],
      ),
    );
  }
}
