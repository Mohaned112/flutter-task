import 'package:flutter/material.dart';
import 'package:untitled2/conversation/Active_chat_widget.dart';
import 'package:untitled2/conversation/Conversation_widget.dart';





class messangerScreen extends StatelessWidget {
   messangerScreen({super.key});


var border = OutlineInputBorder(
  borderRadius: BorderRadius.circular(20)
);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: CircleAvatar(
          backgroundImage: Image
              .network('https://th.bing.com/th/id/OIP.kXD5q5qHgZi3UKQ9y_i49QHaHa?pid=ImgDet&w=1080&h=1080&rs=1')
              .image,
        ),

        centerTitle: false,
        title: const Text('Chats'),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey[600],
            child: IconButton(onPressed: (){},


                 icon:const Icon (Icons.photo_camera),


            ),
          ),
          const SizedBox(width: 10,),
          CircleAvatar(
            backgroundColor: Colors.grey[600],
            child: IconButton(onPressed: (){},


              icon:const Icon(Icons.edit),


            ),
          ),

        ],


      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                fillColor: Colors.grey,
                filled: true,
                border: border,
                enabledBorder:border,
                focusedBorder: border,
                disabledBorder: border,
                prefixIcon: Icon(Icons.search,  color: Colors.white),


              ),

            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 150,
              child: ListView.separated(scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>  ActiveChatWidget(), separatorBuilder: (context, index) => SizedBox(width: 5,), itemCount: 10,),
            ),
            const SizedBox(height: 10,),
            Expanded(
              child: ListView.separated(
                  
                  itemBuilder: (context,index ) => ConversationWidget(), separatorBuilder: (context,index) => SizedBox(height: 10,) , itemCount:10),
            )
          ],
        ),
      ),
    );
  }
}
