import 'package:flutter/material.dart';
import 'package:flutter_app_demno/utlis/common_colors.dart';

/*
 * @author 小强
 *
 * @time 2020/9/26  15:03
 *
 * @desc 进度条
 *
 */

class NewUserProgressWidget extends StatelessWidget {

   final int progress;
   final double width ;
   final double height;
   final double radius ;

   NewUserProgressWidget(this.progress, {this.width= 60, this.height = 5, this.radius= 5});

   @override
   Widget build(BuildContext context) {
      return SizedBox(
         width: width,
         height: height,
         child: ClipRRect(
             borderRadius: BorderRadius.all(Radius.circular(radius)),
             child: Stack(
                children: <Widget>[
                   Container(
                      width: width,
                      height: height,
                      decoration: BoxDecoration(color: CommonColors.COLOR_F1F1F1),
                   ),
                   Positioned(
                      left: 0,
                      child: ClipRRect(
                         borderRadius: BorderRadius.all(Radius.circular(radius)),
                         child: Container(
                            width: progress / 100 * width,
                            height: height,
                            decoration: BoxDecoration(color: CommonColors.COLOR_00B2FF),
                         ),
                      ),
                   )
                ],
             )),
      );
   }
}
