import 'package:ai_assistant/controller/chat_controller.dart';
import 'package:ai_assistant/helper/global.dart';
import 'package:ai_assistant/widget/message_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart' as flutter;

class ChatBoatFeature extends StatefulWidget {
  const ChatBoatFeature({super.key});

  @override
  State<ChatBoatFeature> createState() => _ChatBoatFeatureState();
}

class _ChatBoatFeatureState extends State<ChatBoatFeature> {
  // ignore: non_constant_identifier_names
  final _C = ChatController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat with AI'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(children: [
          Expanded(
            child: TextFormField(
              controller: _C.textC,
              textAlign: TextAlign.center,
              onTapOutside: (e) => flutter.FocusScope.of(context).unfocus(),
              decoration: const InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  isDense: true,
                  hintText: 'Ask me any thing you want ...',
                  hintStyle: TextStyle(fontSize: 14),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)))),
            ),
          ),
          const SizedBox(width: 8),
          CircleAvatar(
            radius: 24,
            // backgroundColor: Theme.of(context).buttonColor,
            child: IconButton(
              onPressed: _C.askQuestion,
              icon: const Icon(Icons.rocket_launch_rounded,
                  color: Colors.white, size: 28),
            ),
          )
        ]),
      ),
      body: Obx(
        () => ListView(
          physics: const BouncingScrollPhysics(),
          padding:
              EdgeInsets.only(top: mq.height * .02, bottom: mq.height * .1),
          children: _C.list.map((e) => MessageCard(message: e)).toList(),
        ),
      ),
    );
  }
}
