import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

/*
 * @author 小强
 *
 * @time 2020/9/23  20:44
 *
 * @desc 名片页面
 *
 */

class BusinessCardPage extends StatefulWidget {
   @override
   _BusinessCardPageState createState() => _BusinessCardPageState();
}

class _BusinessCardPageState extends State<BusinessCardPage> {
   @override
   Widget build(BuildContext context) {
      return new Container(
         child: Column(
            children: <Widget>[_SwiperIDY()],
         ),
      );
   }
}

class _SwiperIDY extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
      return Container(
         height: 300,
         child: Swiper(
            itemCount: 3,
            loop: false,
            control: SwiperPagination(margin:EdgeInsets.only(bottom: 20),builder: SwiperPagination.dots),
            transformer: ScaleAndFadeTransformer(),
            itemBuilder: (BuildContext context, int index) {
               return new Image.network(
                  "https://f11.baidu.com/it/u1=163707931&u2=953875484&fm=76",
                  fit: BoxFit.fill,
               );
            },
         ),
      );
   }
}
