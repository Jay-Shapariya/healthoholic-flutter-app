import 'package:healthoholic/const/const.dart';
import 'package:healthoholic/views/auth_screen/login_screen.dart';

import 'package:healthoholic/views/splash_screen/splash_intro1.dart';
import 'package:healthoholic/views/splash_screen/splash_intro2.dart';
import 'package:healthoholic/views/splash_screen/splash_intro3.dart';
class SplashIntroFourth extends StatelessWidget {
  const SplashIntroFourth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Set your desired background color
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(introScreen4,width: context.screenWidth,fit: BoxFit.cover,),
          Container(
            color: Colors.transparent,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // Handle Skip action
                    Get.to(const LoginScreen());
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(color: Colors.white,),
                  ),
                ),
                Row(
                  children: [
                    for (int i = 0; i < 4; i++) // Number of splash screens
                      Container(
                        margin:const EdgeInsets.symmetric(horizontal: 4),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(i == 3 ? 1 : 0.4),
                          shape: BoxShape.circle,
                        ),
                      ).onTap(() {
                        switch (i) {
                          
                          case 1:
                            Get.to(()=> const SplashIntroSecond(),transition: Transition.rightToLeft);
                          case 2:
                            Get.to(()=> const SplashIntroThird(),transition: Transition.rightToLeft);
                          case 0:
                            Get.to(()=> const SplashIntroFirst(),transition: Transition.rightToLeft);
                            break;
                          default:
                        }
                      },),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Get.to(()=> const LoginScreen(),transition: Transition.rightToLeft);
                  },
                  child:const Text(
                    'Next',
                    style: TextStyle(color: Colors.white),

                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}