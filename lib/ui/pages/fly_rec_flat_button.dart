import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*
 * @author 小强
 *
 * @time 2020/9/25  13:43
 *
 * @desc
 *
 */

class FlyRecFlatButton extends StatelessWidget {
   final String title;
   final double width;
   final GestureTapCallback onTap;
   final double left;
   final double top;
   final double right;
   final double bottom;
   final Color color;
   final double radius;
   static const Color defaultColor = Color(0xff00b2ff);

   FlyRecFlatButton(this.title,
       {this.width = 100.0,
          this.onTap,
          this.left = 0,
          this.top = 5,
          this.right = 0,
          this.bottom = 5,
          this.color = defaultColor,
          this.radius = 5});

   @override
   Widget build(BuildContext context) {
      return Material(
         color: color,
         borderRadius: BorderRadius.circular(radius),
         child: InkWell(
            onTap: onTap,
            child: Container(
               alignment: Alignment.center,
               padding: EdgeInsets.fromLTRB(left, top, right, bottom),
               width: width,
               child: new Text(
                  title,
                  style: TextStyle(
                     color: Colors.white,
                     fontSize: 20.sp,
                  ),
               ),
            ),
         ),
      );
   }
}
