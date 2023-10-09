import 'package:healthoholic/const/const.dart';
import 'package:healthoholic/views/meditation_screen/meditation101.dart';
import 'package:healthoholic/views/meditation_screen/relax_sound_home.dart';

class MeditationScreen extends StatefulWidget {
  const MeditationScreen({super.key});

  @override
  State<MeditationScreen> createState() => _MeditationScreenState();
}

class _MeditationScreenState extends State<MeditationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: blue,
        automaticallyImplyLeading: false,
        title: "Meditation".text.white.size(20).make(),
        leading: const Icon(
          Icons.arrow_back,
          color: whiteColor,
        ).onTap(() {
          Get.back();
        }),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.heightBox,
            "Welcome back, Sarah!".text.bold.size(28).make(),
            10.heightBox,
            "How are you feeling today?"
                .text
                .fontFamily(semibold)
                .size(18)
                .make(),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      icHarmony,
                      width: 30,
                    )
                        .box
                        .outerShadowMd
                        .roundedSM
                        .size(80, 80)
                        .color(whiteColor)
                        .make(),
                    5.heightBox,
                    "Harmony".text.size(16).make(),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      icCalm,
                      width: 30,
                      color: fontGrey,
                    )
                        .box
                        .outerShadowMd
                        .roundedSM
                        .size(80, 80)
                        .color(whiteColor)
                        .make(),
                    5.heightBox,
                    "Calm".text.size(16).make(),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      icRelax,
                      width: 30,
                      color: fontGrey,
                    )
                        .box
                        .outerShadowMd
                        .roundedSM
                        .size(80, 80)
                        .color(whiteColor)
                        .make(),
                    5.heightBox,
                    "Relax".text.size(16).make(),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      icLost,
                      width: 30,
                    )
                        .box
                        .outerShadowMd
                        .roundedSM
                        .size(80, 80)
                        .color(whiteColor)
                        .make(),
                    5.heightBox,
                    "Lost".text.size(16).make(),
                  ],
                ),
              ],
            ),
            40.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(dpMed),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.heightBox,
                    "Meditation 101".text.bold.size(20).make(),
                    10.heightBox,
                    "Techniques, Benifits and a"
                        .text
                        .fontFamily(regular)
                        .size(16)
                        .make(),
                    "Begginer's How - TO "
                        .text
                        .fontFamily(regular)
                        .size(16)
                        .make(),
                    10.heightBox,
                    const CircleAvatar(
                      child: Icon(Icons.play_arrow),
                    ).box.outerShadowLg.make().onTap(() {
                      Get.to(const MeditationHome());
                    }),
                    10.heightBox
                  ],
                )
              ],
            )
                .box
                .white
                .roundedLg
                .outerShadowMd
                .padding(const EdgeInsets.all(10))
                .make(),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(dpRelax),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.heightBox,
                    "Relax Sounds".text.bold.size(20).make(),
                    10.heightBox,
                    "The most effective thing is"
                        .text
                        .fontFamily(regular)
                        .size(16)
                        .make(),
                    "Sometimes to relax"
                        .text
                        .fontFamily(regular)
                        .size(16)
                        .make(),
                    10.heightBox,
                    const CircleAvatar(
                      child: Icon(Icons.play_arrow),
                    )
                        .box
                        .outerShadowLg
                        .make()
                        .onTap(() => Get.to(const RelexSoundHome())),
                    10.heightBox
                  ],
                )
              ],
            )
                .box
                .white
                .roundedLg
                .outerShadowMd
                .padding(const EdgeInsets.all(10))
                .make()
          ],
        ),
      ),
    );
  }
}
