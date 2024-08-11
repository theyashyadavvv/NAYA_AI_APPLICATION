import 'package:ai_assistant/apis/apis.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/message.dart';

class ChatController extends GetxController {
  final textC = TextEditingController();
  final list = <Message>[
    Message(msg: "Hello , How can I help You ?", msgType: MessageType.bot)
  ].obs;
  final scrollC = ScrollController();

  Future<void> askQuestion() async {
    if (textC.text.trim().isNotEmpty) {
      // user
      list.add(Message(msg: textC.text, msgType: MessageType.user));
      list.add(Message(msg: ' please wait', msgType: MessageType.bot));

      final res = await APIs.getAnswer(textC.text);

      // boat
      list.removeLast();
      list.add(Message(msg: res, msgType: MessageType.bot));

      textC.text = '';
    }
  }
}
