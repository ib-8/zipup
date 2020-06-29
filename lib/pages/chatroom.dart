import 'package:flutter/material.dart';
import 'package:super_z/constants.dart';
import 'package:super_z/data/message_data.dart';
import 'package:super_z/widgets/custom_button.dart';
import 'package:super_z/widgets/msg_container.dart';

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  bool isStarted = false;

  messageSender() {
    return MsgContainer(
      message: welcomeMessage[0],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(color: black, width: 3)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Card(
                  shape: CircleBorder(),
                  child: Container(
                    height: 80,
                    width: 80,
                    color: green,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Z',
                            style: textStyle(30, color: black),
                          ),
                          Text(
                            ' Bot',
                            style: textStyle(22, color: black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              isStarted
                  ? Expanded(
                      child: ListView.builder(
                        itemCount: welcomeMessage.length,
                        itemBuilder: (c, i) => Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MsgContainer(
                              message: welcomeMessage[i],
                            ),
                          ],
                        ),
                      ),
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          buttonText: 'Start Conversation',
                          textSize: 20,
                          horizontal: 25,
                          vertical: 15,
                          onPressed: () {
                            setState(() {
                              isStarted = !isStarted;
                            });
                          },
                        ),
                      ],
                    ),
              isStarted
                  ? Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomButton(
                            buttonText: 'End Conversation',
                            textSize: 15,
                            horizontal: 15,
                            vertical: 10,
                            onPressed: () {
                              setState(() {
                                isStarted = !isStarted;
                              });
                            },
                            padding: 8,
                          ),
                        ],
                      ),
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
