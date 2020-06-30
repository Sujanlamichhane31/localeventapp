import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'event.dart';

class EventDetailsBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight= MediaQuery.of(context).size.height;
    final event= Provider.of<Event>(context);

    return Align(
      alignment: Alignment.topCenter,
      child: ClipPath(
        clipper: ImageClipper(),
        child: Image.asset(
          event.imagepath,
          fit: BoxFit.cover,
          width: screenWidth,
        color: Color(0x99000000),
        colorBlendMode: BlendMode.darken,
        height: screenHeight*0.5,
        ),
      ),
    );
  }
}

class ImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path=Path();
    Offset curveStartpoint= Offset(0,40);
    Offset curveEndpoint= Offset(size.width, size.height*0.95);
    path.lineTo(curveStartpoint.dx, curveStartpoint.dy-5);
    path.quadraticBezierTo(size.width*0.2, size.height*1, curveEndpoint.dx-60, curveEndpoint.dy+15);
    path.quadraticBezierTo(size.width*0.99, size.height*1, curveEndpoint.dx, curveEndpoint.dy);


    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper){
    return true;
  }
}
