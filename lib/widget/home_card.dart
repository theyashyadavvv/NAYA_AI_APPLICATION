import 'package:ai_assistant/helper/global.dart';
import 'package:ai_assistant/model/home_type.dart';
import 'package:flutter/material.dart';
// import 'package:get/route_manager.dart';
// import '../model/home_type.dart';
// import 'package:get/get_utils/get_utils.dart';
import 'package:lottie/lottie.dart';

class HomeCard extends StatelessWidget {
  final HomeType homeType;
  const HomeCard({super.key, required this.homeType});

  @override
  Widget build(BuildContext context) {
    return Card(
  
      child: Card(
        color: Colors.blue.withOpacity(.2),
        elevation: 0,
        margin: EdgeInsets.only(bottom: mq.height*.02),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          onTap: homeType.onTap,
          child: 
        Row(
          children: [
      Lottie.asset('assets/lottie/search.json', width: mq.width *.35),
      const Spacer(),
      
       Text(
        homeType.title,
       style: const TextStyle(
        color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500, letterSpacing: 1),

        
        ),
        const Spacer( flex: 2,)
        
          ],
          ),
          ),
          ),
    );
  }
}