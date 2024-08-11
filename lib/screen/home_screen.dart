// import 'package:ai_assistant/helper/pref.dart';
// import 'package:ai_assistant/widget/custom_loding.dart';
// import 'package:ai_assistant/apis/apis.dart';
import 'package:ai_assistant/model/home_type.dart';
import 'package:ai_assistant/widget/home_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:get/get.dart';

import '../helper/global.dart';
// import '../helper/pref.dart';
// import '../widget/custom_loading.dart';
// import 'home_screen.dart';
// import 'onboarding_screen.dart';

// ignore: camel_case_types
class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Home_screen> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    // Pref.showOnboarding =false;
    super.initState();

    //wait for some time on splash & then move to next screen
    // Future.delayed(const Duration(seconds: 2), () {
    //   Navigator.of(context).pushReplacement(MaterialPageRoute(
    //       builder: (_) => const OnboardingScreen()));
    //   //         ? const OnboardingScreen()
    // //   //         : const HomeScreen()));
    //   Get.off(() =>
    // Pref.showOnboarding ? const OnboardingScreen() : const HomeScreen());
    // });
  }

  @override
  Widget build(BuildContext context) {
    //initializing device size
    mq = MediaQuery.sizeOf(context);
    // APIs.getAnswer('hii');

    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text(
            'Ai Assistant',
            style: TextStyle(
                color: Colors.blue, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          actions: [
            IconButton(
                padding: const EdgeInsets.only(right: 10),
                onPressed: () {},
                icon: const Icon(
                  Icons.brightness_4_rounded,
                  color: Colors.blue,
                  size: 27,
                ))
          ],
        ),
        //body
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: mq.width * .04, vertical: mq.height * .015),
          children: HomeType.values
              .map((e) => HomeCard(
                    homeType: e,
                  ))
              .toList(),
        )

        //for adding some space

        );
  }
}
