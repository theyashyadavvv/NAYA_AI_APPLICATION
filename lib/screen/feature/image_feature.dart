import 'package:ai_assistant/controller/image_controller.dart';
import 'package:ai_assistant/helper/global.dart';
import 'package:ai_assistant/widget/coustom_btn.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ImageBoatFeature extends StatefulWidget {
  const ImageBoatFeature({super.key});

  @override
  State<ImageBoatFeature> createState() => _ImageBoatFeatureState();
}

class _ImageBoatFeatureState extends State<ImageBoatFeature> {
  final _c = ImageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Image Creator'),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(
            top: mq.height * .02,
            bottom: mq.height * .1,
            left: mq.width * .04,
            right: mq.width * .04),
        children: [
          TextFormField(
            controller: _c.textC,
            textAlign: TextAlign.center,
            minLines: 2,
            maxLines: null,
            onTapOutside: (e) => FocusScope.of(context).unfocus(),
            decoration: const InputDecoration(
                hintText:
                    'Imagine something wonderful & Innovative\type here & I will create for you 😃',
                hintStyle: TextStyle(fontSize: 13.5),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
          ),
          // ai image
          Container(
              height: mq.height * .5,
              alignment: Alignment.center,
              child: Lottie.asset('assets/lottie/ai_play.json',
                  height: mq.height * .3)),
          CustomBtn(onTap: () {}, text: 'Create'),
        ],
      ),
    );
  }
}
