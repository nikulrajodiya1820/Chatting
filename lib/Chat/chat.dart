import 'package:chatting/CommonFile/color.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Chatting",
            style: TextStyle(color: ThemeColor.secondary),
          ),
          centerTitle: true,
          backgroundColor: ThemeColor.primary,
        ),
        body: InkWell(
          onTap: (){

          },
          child: Column(
            children: [
              Expanded(child: Container()),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black),borderRadius:BorderRadius.all(Radius.circular(40)) ),
                child: Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width-70,child: TextFormField(decoration: InputDecoration(border: InputBorder.none),)),
                    Expanded(child: GestureDetector(onTap:(){},child: Center(child: Icon(Icons.send,size: 25,))))
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}