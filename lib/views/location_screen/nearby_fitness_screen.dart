import 'package:healthoholic/const/const.dart';
import 'package:healthoholic/views/location_screen/location_screen.dart';

class NearbyFitnessScreen extends StatefulWidget {
  const NearbyFitnessScreen({super.key});

  @override
  State<NearbyFitnessScreen> createState() => _NearbyFitnessScreenState();
}

class _NearbyFitnessScreenState extends State<NearbyFitnessScreen> {
  final List<bool> _selectedTimes = <bool>[true, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: blue,
        automaticallyImplyLeading: false,
        title: "Nearby Fitness Centers".text.bold.white.size(20).make(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Sarover Complex"
                        .text
                        .fontFamily(semibold)
                        .size(15)
                        .color(darkFontGrey)
                        .make(),
                    3.heightBox,
                    "Navrangpura"
                        .text
                        .fontFamily(regular)
                        .size(12)
                        .color(fontGrey)
                        .make()
                  ],
                ),
                10.widthBox,
                const Icon(
                  Icons.location_on,
                  size: 25,
                  color: fontGrey,
                ),
              ],
            ),
            15.heightBox,
            SizedBox(
              width: context.screenWidth - 40,
              height: 40,
              child: Row(children: [
                5.widthBox,
                const Icon(
                  Icons.location_on,
                  color: fontGrey,
                ),
                10.widthBox,
                "Change your location..."
                    .text
                    .color(fontGrey)
                    .fontFamily(semibold)
                    .make()
              ]),
            ).box.color(grey).roundedSM.outerShadow.makeCentered().onTap(() {
              Get.to(()=> const LocationChangeScreen());
            }),
            15.heightBox,
            "Select Distance"
                .text
                .fontFamily(bold)
                .color(darkFontGrey)
                .size(18)
                .make(),
            15.heightBox,
            // TabBar(tabs:[
            //   Tab(child: "${timesList[0]}".text.size(16).black.make(),),
            //   Tab(child: "${timesList[1]}".text.size(16).black.make(),),
            //   Tab(child: "${timesList[2]}".text.size(16).black.make(),)

            // ]),
            ToggleButtons(
              direction:Axis.horizontal,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
                selectedBorderColor: Colors.blue[700],
                selectedColor: Colors.white,
                fillColor: Colors.blue[200],
                color: Colors.blue[400],
               isSelected: _selectedTimes,
               children: timesList),
            15.heightBox,
            "Recommended options"
                .text
                .fontFamily(bold)
                .color(darkFontGrey)
                .size(18)
                .make(),
            15.heightBox,
            Expanded(
                child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(
                    icFitCenter,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                  title: "Fitlife Gym Center"
                      .text
                      .fontFamily(bold)
                      .color(darkFontGrey)
                      .size(17)
                      .make(),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      10.heightBox,
                      "5 lessons"
                          .text
                          .fontFamily(semibold)
                          .color(fontGrey)
                          .size(15)
                          .make(),
                      10.heightBox,
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: golden,
                            size: 15,
                          ),
                          5.widthBox,
                          "4.4"
                              .text
                              .fontFamily(semibold)
                              .size(13)
                              .color(fontGrey)
                              .make(),
                          5.widthBox,
                          const Icon(
                            Icons.circle,
                            size: 5,
                          ),
                          5.widthBox,
                          "By Sarah william"
                              .text
                              .fontFamily(regular)
                              .color(textfieldGrey)
                              .size(13)
                              .make(),
                          5.widthBox,
                          const Icon(
                            Icons.circle,
                            size: 5,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
                    .box
                    .white
                    .outerShadowMd
                    .border(color: grey)
                    .padding(const EdgeInsets.all(8))
                    .roundedSM
                    .white
                    .make()
                    .marginOnly(bottom: 8);
              },
            )),
          ],
        ),
      ),
    );
  }
}
