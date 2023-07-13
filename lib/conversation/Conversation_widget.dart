import 'package:flutter/material.dart';
class ConversationWidget extends StatelessWidget {
  const ConversationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
        SizedBox(width: 10,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('kareem ahmed', style: TextStyle(
                color: Colors.white,
              ),
              ),
              SizedBox(height: 10,),
              Text('Description of message',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ) ,

        Text('11:36 PM',
            style: TextStyle(
              color: Colors.white,
            )


        )

      ],
    );
  }
}
