import 'package:healthoholic/const/const.dart';
import 'package:healthoholic/const/strings.dart';
import 'package:healthoholic/views/splash_screen/splash_intro1.dart';

class SplashLogo extends StatefulWidget {
  const SplashLogo({super.key});

  @override
  State<SplashLogo> createState() => _SplashLogoState();
}

class _SplashLogoState extends State<SplashLogo> {
  changeScreen(){
    Future.delayed(const Duration(seconds: 3), (){
      Get.to(()=> const SplashIntroFirst());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      body: Center(
        child: Column(children: [
          const Spacer(),
          Align(
              alignment: Alignment.center,
              child: Image.asset(
                icAppLogo,
                width: context.screenWidth-30,
                color: whiteColor,
                fit: BoxFit.cover,
              )),
          
          const Spacer(),
          //applogoWidget(width: 77,height: 77),
          10.heightBox,
          appname.text.fontFamily(bold).size(22).white.make(),
          10.heightBox,
          appversion.text.white.make(),
          //const Spacer(),
          10.heightBox,
          credits.text.white.fontFamily(semibold).make(),
          30.heightBox
        ]),
      ),
    );
  }
}