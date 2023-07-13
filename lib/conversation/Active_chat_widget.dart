import 'package:flutter/material.dart';

class ActiveChatWidget extends StatelessWidget {
  const ActiveChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: Image.network('https://th.bing.com/th/id/OIP.kXD5q5qHgZi3UKQ9y_i49QHaHa?pid=ImgDet&w=1080&h=1080&rs=1').image,
            ),
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.green,
            )

          ],
        ),
        SizedBox(height: 5,),
        Text('Kareem', style: TextStyle(
            color: Colors.white
        ),),
      ],
    );
  }
}
