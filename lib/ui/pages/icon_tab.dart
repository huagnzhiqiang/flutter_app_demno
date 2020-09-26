import 'package:flutter/material.dart';
import 'package:flutter_app_demno/utlis/common_ulit.dart';

/*
 * @author 小强
 *
 * @time 2020/9/23  19:34
 *
 * @desc Icon页面
 *
 */

class IconTab extends StatefulWidget {
   @override
   _IconTabState createState() => _IconTabState();

   final String path;
   final String data;
   final Color color;

   IconTab({this.path, this.data, this.color})
       : assert(path != null || data != null || color != null),
          super();
}

class _IconTabState extends State<IconTab> {
   @override
   Widget build(BuildContext context) {
      assert(debugCheckHasMaterial(context));

      return new Container(
         height: 60,
         padding: EdgeInsets.only(bottom: 10),
         child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
               new Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                     new Image(
                        image: AssetImage(CommonUtil.getImgPath(widget.path)),
                        width: 20,
                        height: 20,
                     ),
                     new Text(
                        widget.data,
                        style: TextStyle(color: widget.color, fontSize: 15),
                     ),
                  ],
               )
            ],
         ),
      );
      ;
   }
}
