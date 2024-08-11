import 'package:ai_assistant/screen/feature/chatbot_feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import '../screen/feature/translator_feature.dart';
import '../screen/feature/image_feature.dart';



enum HomeType{aiChatBoat, aiImage, aiTranslator}


extension MyHomeType on  HomeType{
  //title
  String get title => switch (this){
    HomeType.aiChatBoat => 'AI ChatBoat',
    HomeType.aiImage => 'AI Image Creator',
    HomeType.aiTranslator => 'Language Translator'

  };

  //lottie
   String get lottie => switch (this){
    HomeType.aiChatBoat => 'AI ChatBoat',
    HomeType.aiImage => 'AI Image Creator',
    HomeType.aiTranslator => 'Language Translator'

  };
//for alignment

 String get leftAlign => switch (this){
    HomeType.aiChatBoat => 'AI ChatBoat',
    HomeType.aiImage => 'AI Image Creator',
    HomeType.aiTranslator => 'Language Translator'

  };



  //for  alignment
  EdgeInsets get padding => switch(this){
HomeType.aiChatBoat=> EdgeInsets.zero,
HomeType.aiImage=>const EdgeInsets.all(20),
HomeType.aiTranslator=>EdgeInsets.zero,
  };

//     VoidCallback get OnTap => switch(this){
// HomeType.aiChatBoat=> ()Get.to(() =>ChatBoatFeature()),
// HomeType.aiImage=>() Get.to(() =>ImageFeature()),
// HomeType.aiTranslator=>() Get.to(() =>TranslatorFeature()),
//   };
 VoidCallback get onTap => switch (this) {
        HomeType.aiChatBoat => () => Get.to(() => const ChatBoatFeature()),
        HomeType.aiImage => () => Get.to(() => const ImageBoatFeature ()),
        HomeType.aiTranslator => () => Get.to(() => const TranslatorFeature()),
};

}