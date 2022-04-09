import 'package:flutter/material.dart';
import 'package:section21/message_data.dart';

class Detail extends StatelessWidget {
  Detail({Key? key, required this.image, required this.message})
      : super(key: key);

  final String image;
  final Message message;

  final String optionOne = "Pria";
  final String optionTwo = "Wanita";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(message.name),
      ),
      
      body: Column(
        children: [
          Hero(tag: message.name, child: Image.network(image)),
          Hero(tag: message.name, child: Text(message.messageText)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                        context, ReturnParam(optionOne, Colors.blue));
                  },
                  child: Text(optionOne),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue))),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                      context, ReturnParam(optionTwo, Colors.deepPurple));
                },
                child: Text(optionTwo),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.deepPurple)),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ReturnParam {
  final String option;
  final Color color;

  ReturnParam(this.option, this.color);
}
