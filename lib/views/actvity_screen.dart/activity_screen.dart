import 'package:healthoholic/const/const.dart';
import 'package:healthoholic/const/strings.dart';
import 'package:healthoholic/views/actvity_screen.dart/cal_burned_screen.dart';
import 'package:healthoholic/views/actvity_screen.dart/step_screen.dart';
import 'package:healthoholic/widgets_common/arc_widget.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: blue,
        automaticallyImplyLeading: false,
        title: activity.text.size(20).fontFamily(bold).color(whiteColor).make(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.heightBox,
              SizedBox(
                width: 250,
                height: 290,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    70.heightBox,
                    "3000"
                        .text
                        .fontFamily(bold)
                        .color(whiteColor)
                        .size(25)
                        .make()
                        .marginOnly(left: 30),
                    5.heightBox,
                    "Steps today"
                        .text
                        .fontFamily(regular)
                        .size(13)
                        .white
                        .make()
                        .marginOnly(left: 30),
                    30.heightBox,
                    const Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        "o".text.fontFamily(bold).white.make(),
                        //const Icon(Icons.circle_outlined,size: 10,color: whiteColor,),
                        7.widthBox,
                        "980"
                            .text
                            .fontFamily(bold)
                            .color(whiteColor)
                            .size(18)
                            .make(),
                        5.widthBox,
                        "Cals".text.white.fontFamily(regular).size(13).make(),
                        7.widthBox,
                        "o".text.fontFamily(bold).white.make(),
                      ],
                    ).box.make().marginOnly(left: 30),
                    5.heightBox,
                    Row(
                      children: [
                        "You have to walk "
                            .text
                            .white
                            .fontFamily(regular)
                            .size(13)
                            .make(),
                        "0.5km ".text.white.fontFamily(bold).size(13).make(),
                        "more.".text.white.fontFamily(regular).size(13).make(),
                      ],
                    ).box.make().marginOnly(left: 30),
                    70.heightBox
                  ],
                ),
              )
                  .box
                  .color(blue)
                  .outerShadowMd
                  .customRounded(const BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25)))
                  .make(),
              30.heightBox,
              SizedBox(
                width: context.screenWidth - 60,
                height: 180,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    10.widthBox,
                    Column(
                      children: [
                        const Spacer(),
                        "BMI (Body Mass Index)"
                            .text
                            .size(17)
                            .fontFamily(bold)
                            .white
                            .make(),
                        5.heightBox,
                        "You have a normal height"
                            .text
                            .size(14)
                            .fontFamily(regular)
                            .white
                            .make(),
                        const Spacer(),
                        ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: whiteColor,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)))),
                                onPressed: () {},
                                child: "View more"
                                    .text
                                    .fontFamily(bold)
                                    .color(darkFontGrey)
                                    .make())
                            .box
                            .outerShadowMd
                            .make(),
                        const Spacer(),
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Stack(
                        children: [
                          const ArcWidget(
                              startAngle: 0,
                              sweepAngle: 360,
                              color: whiteColor,
                              size: 100),
                          const ArcWidget(
                              startAngle: 350,
                              sweepAngle: 90,
                              color: lightbluecolor,
                              size: 100),
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: "20,1"
                                    .text
                                    .fontFamily(bold)
                                    .color(Colors.black)
                                    .size(16)
                                    .make()
                                    .marginOnly(bottom: 45)),
                          ),
                        ],
                      ),
                    ).box.white.roundedFull.outerShadowLg.make(),
                    const Spacer()
                  ],
                ),
              ).box.color(blue).roundedLg.outerShadowMd.makeCentered(),
              30.heightBox,
              SizedBox(
                width: context.screenWidth - 60,
                height: 70,
                child: Row(children: [
                  20.widthBox,
                  "Today's target"
                      .text
                      .size(18)
                      .fontFamily(semibold)
                      .color(darkFontGrey)
                      .make(),
                  const Spacer(),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)))),
                      onPressed: () {},
                      child: "Check"
                          .text
                          .white
                          .fontFamily(semibold)
                          .size(14)
                          .make()),
                  20.widthBox
                ]),
              ).box.color(lightblue).outerShadowMd.roundedLg.makeCentered(),
              30.heightBox,
              "Daily activity status"
                  .text
                  .color(darkFontGrey)
                  .size(18)
                  .fontFamily(bold)
                  .make()
                  .marginOnly(left: 10),
              30.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 180,
                    height: 300,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        10.widthBox,
                        Image.asset(
                          icWaterGraph,
                          width: 30,
                          fit: BoxFit.cover,
                        ),
                        10.widthBox,
                        Column(
                          children: [
                            10.heightBox,
                            "Water intake"
                                .text
                                .fontFamily(semibold)
                                .size(18)
                                .color(darkFontGrey)
                                .make(),
                            10.heightBox,
                            "4 Litter"
                                .text
                                .fontFamily(semibold)
                                .size(16)
                                .color(bluecolor)
                                .make(),
                            10.heightBox,
                            Image.asset(
                              icWaterRealtime,
                              width: 110,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ).box.white.outerShadowMd.roundedSM.make(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 180,
                        height: 145,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              10.heightBox,
                              "Sleep"
                                  .text
                                  .size(16)
                                  .fontFamily(bold)
                                  .color(darkFontGrey)
                                  .make(),
                              10.heightBox,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  "8"
                                      .text
                                      .size(19)
                                      .fontFamily(semibold)
                                      .color(bluecolor)
                                      .make(),
                                  "h"
                                      .text
                                      .size(13)
                                      .fontFamily(semibold)
                                      .color(bluecolor)
                                      .make(),
                                  "20"
                                      .text
                                      .size(19)
                                      .fontFamily(semibold)
                                      .color(bluecolor)
                                      .make(),
                                  "min"
                                      .text
                                      .size(13)
                                      .fontFamily(semibold)
                                      .color(bluecolor)
                                      .make(),
                                ],
                              ),
                              Image.asset(
                                icSleepGraph,
                                width: 120,
                                fit: BoxFit.cover,
                              )
                            ]),
                      ).box.white.outerShadowMd.roundedSM.make(),
                      10.heightBox,
                      SizedBox(
                        width: 180,
                        height: 145,
                        child: Column(children: [
                          5.heightBox,
                          "Calories"
                              .text
                              .size(16)
                              .fontFamily(bold)
                              .color(darkFontGrey)
                              .make(),
                          5.heightBox,
                          "780 kCal"
                              .text
                              .size(19)
                              .fontFamily(semibold)
                              .color(bluecolor)
                              .make(),
                          Stack(
                            children: [
                              Image.asset(icCalPie,
                                  width: 94, fit: BoxFit.cover),
                              "230kCal".text.white.size(11).fontFamily(semibold).make().marginOnly(top: 30,left: 23),
                              "Left".text.white.size(11).fontFamily(semibold).make().marginOnly(top: 50,left: 33),
                            ],
                          ),
                        ]),
                      ).box.white.outerShadowMd.roundedSM.make()
                    ],
                  )
                ],
              ),
              30.heightBox,
              "Monthly activity status"
                  .text
                  .color(darkFontGrey)
                  .size(18)
                  .fontFamily(bold)
                  .make()
                  .marginOnly(left: 10),
              20.heightBox,
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                SizedBox(
                  width: 180,
                  height: 120,
                  child: Column(
                    children: [
                      20.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            icShoe,
                            width: 40,
                            fit: BoxFit.cover,
                          ),
                          10.widthBox,
                          "50,483"
                              .text
                              .color(darkFontGrey)
                              .size(20)
                              .fontFamily(bold)
                              .make(),
                        ],
                      ),
                      10.heightBox,
                      "Steps"
                          .text
                          .fontFamily(semibold)
                          .size(17)
                          .color(darkFontGrey)
                          .make(),
                      10.heightBox,
                      "Walked in July"
                          .text
                          .color(fontGrey)
                          .fontFamily(regular)
                          .make()
                    ],
                  ),
                ).box.color(whiteColor).outerShadowLg.roundedSM.make().onTap(() {
                  Get.to(()=> const StepScreen(),transition: Transition.native);
                }),
                SizedBox(
                  width: 180,
                  height: 120,
                  child: Column(
                    children: [
                      20.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            icWeight,
                            width: 25,
                            fit: BoxFit.cover,
                          ),
                          10.widthBox,
                          "12,832"
                              .text
                              .color(darkFontGrey)
                              .size(20)
                              .fontFamily(bold)
                              .make(),
                        ],
                      ),
                      10.heightBox,
                      "Cals"
                          .text
                          .fontFamily(semibold)
                          .size(17)
                          .color(darkFontGrey)
                          .make(),
                      10.heightBox,
                      "Burned in July"
                          .text
                          .color(fontGrey)
                          .fontFamily(regular)
                          .make()
                    ],
                  ),
                ).box.color(whiteColor).outerShadowLg.roundedSM.make().onTap(() {
                  Get.to(()=> const CalBurnedScreen(),transition: Transition.native);
                }),
              ]),
              20.heightBox,
              SizedBox(
                      width: context.screenWidth - 40,
                      height: 160,
                      child: Column(
                        children: [
                          SizedBox(
                            width: context.screenWidth - 40,
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        "17.1"
                                            .text
                                            .fontFamily(bold)
                                            .size(20)
                                            .color(darkFontGrey)
                                            .make(),
                                        "%".text.color(darkFontGrey).make()
                                      ],
                                    ),
                                    10.heightBox,
                                    "Body Fat"
                                        .text
                                        .color(darkFontGrey)
                                        .fontFamily(semibold)
                                        .make()
                                  ],
                                ),
                                const VerticalDivider(),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        "49.8"
                                            .text
                                            .fontFamily(bold)
                                            .size(20)
                                            .color(darkFontGrey)
                                            .make(),
                                        "Kg".text.color(darkFontGrey).make()
                                      ],
                                    ),
                                    10.heightBox,
                                    "Weight"
                                        .text
                                        .color(darkFontGrey)
                                        .fontFamily(semibold)
                                        .make()
                                  ],
                                ),
                                const VerticalDivider(),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        "56.9"
                                            .text
                                            .fontFamily(bold)
                                            .size(20)
                                            .color(darkFontGrey)
                                            .make(),
                                        "%".text.color(darkFontGrey).make()
                                      ],
                                    ),
                                    10.heightBox,
                                    "Water"
                                        .text
                                        .color(darkFontGrey)
                                        .fontFamily(semibold)
                                        .make()
                                  ],
                                )
                              ],
                            ),
                          ).box.color(grey).makeCentered(),
                          const Spacer(),
                          "All are going good continue daily working morethan 60 min to maintain your health"
                              .text
                              .fontFamily(regular)
                              .color(fontGrey)
                              .make()
                              .paddingAll(10),
                          const Spacer(),
                        ],
                      ))
                  .box
                  .color(whiteColor)
                  .roundedSM
                  .outerShadowMd
                  .makeCentered(),
              10.heightBox
            ],
          ),
        ),
      ),
    );
  }
}
