import 'package:healthoholic/const/const.dart';
import 'package:healthoholic/views/meditation_screen/meditation_home.dart';

class MeditationHome extends StatefulWidget {
  const MeditationHome({super.key});

  @override
  State<MeditationHome> createState() => _MeditationHomeState();
}

class _MeditationHomeState extends State<MeditationHome> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back, color: whiteColor)),
        backgroundColor: blue,
        title: "Meditation 101".text.bold.white.size(20).make(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
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
                    50.heightBox,
                  ],
                )
              ],
            )
                .box
                .white
                .roundedLg
                .outerShadowMd
                .padding(const EdgeInsets.all(10))
                .make().onTap(() {
                  Get.to(const MeditationStartScreen());
                }),
            20.heightBox,
            Expanded(
              child: ListView.builder(
                itemCount: meditationNameList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      
                    },
                   
                    horizontalTitleGap: 18,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 5,vertical:20),
                    leading: Image.asset(meditationImg[index],
                    fit: BoxFit.cover,
                    width: 70,),
                    title: meditationNameList[index]
                        .text
                        .fontFamily(bold)
                        .size(18)
                        .color(darkFontGrey)
                        .make(),
                    trailing: meditationTime[index]
                        .text
                        .fontFamily(regular)
                        .size(16)
                        .color(bluecolor)
                        .make(),
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
