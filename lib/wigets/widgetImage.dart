import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class WidgetIcons extends StatelessWidget {
  final Image;
  const WidgetIcons({

    super.key,
    required this.Image
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:70,
      width: 70,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: Image,
            fit: BoxFit.cover,

          )
      ),
    );
  }
  Row buildRow( final  Icons, String text, ) {
    return Row(
      children: [
        Icons,
        SizedBox(width: 4,),
        Text(text,style: TextStyle(color: Colors.grey),)
      ],
    );
  }
}
