import 'package:healthoholic/const/const.dart';
import 'package:healthoholic/views/meditation_screen/music_player.dart';

class RelexSoundHome extends StatelessWidget {
  const RelexSoundHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: bluecolor,
        automaticallyImplyLeading: false,
        title: "Relax Sound".text.bold.make(),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: whiteColor,
          ),
          onPressed: () => Get.back(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
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
                    50.heightBox
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
            Expanded(
              child: ListView.builder(
                itemCount: relaxSoundList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Get.to(const MusicPlayer());
                    },
                    trailing: relaxSoundTime[index].text.make(),
                    horizontalTitleGap: 18,
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                    leading: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(relaxSoundImgList[index]),
                        ),
                      ),
                    ),
                    title: relaxSoundList[index].text.bold.make(),
                    subtitle: relaxListeningList[index].text.make(),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
