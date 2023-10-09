import 'package:healthoholic/const/const.dart';
import 'package:healthoholic/const/strings.dart';
import 'package:healthoholic/views/profile_screen/edit_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: blue,
        title: profile.text.size(20).fontFamily(bold).white.make(),
        foregroundColor: whiteColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              10.heightBox,
              Row(
                children: [
                  15.widthBox,
                  Image.asset(
                    icProfile,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                  10.widthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Sarah Jonas"
                          .text
                          .size(18)
                          .fontFamily(semibold)
                          .color(darkFontGrey)
                          .make(),
                      5.heightBox,
                      "sarahjonas@email.com"
                          .text
                          .underline
                          .fontFamily(regular)
                          .color(fontGrey)
                          .make()
                    ],
                  ),
                  const Spacer(),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size.fromWidth(70),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      onPressed: () {
                        Get.to(()=> const EditProfile());
                      },
                      child: "Edit".text.white.fontFamily(semibold).make()),
                  15.widthBox
                ],
              ),
              15.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 110,
                    height: 80,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          "180cm"
                              .text
                              .fontFamily(bold)
                              .color(bluecolor)
                              .size(18)
                              .make(),
                          10.heightBox,
                          "Height"
                              .text
                              .fontFamily(semibold)
                              .color(fontGrey)
                              .size(15)
                              .make()
                        ]),
                  )
                      .box
                      .white
                      .roundedLg
                      .outerShadowLg
                      .border(color: grey)
                      .make(),
                  SizedBox(
                    width: 110,
                    height: 80,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          "65kg"
                              .text
                              .fontFamily(bold)
                              .color(bluecolor)
                              .size(18)
                              .make(),
                          10.heightBox,
                          "Weight"
                              .text
                              .fontFamily(semibold)
                              .color(fontGrey)
                              .size(15)
                              .make()
                        ]),
                  )
                      .box
                      .white
                      .roundedLg
                      .outerShadowLg
                      .border(color: grey)
                      .make(),
                  SizedBox(
                    width: 110,
                    height: 80,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          "21yo"
                              .text
                              .fontFamily(bold)
                              .color(bluecolor)
                              .size(18)
                              .make(),
                          10.heightBox,
                          "Age"
                              .text
                              .fontFamily(semibold)
                              .color(fontGrey)
                              .size(15)
                              .make()
                        ]),
                  )
                      .box
                      .white
                      .roundedLg
                      .outerShadowLg
                      .border(color: grey)
                      .make(),
                ],
              ),
              15.heightBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  10.heightBox,
                  "Account"
                      .text
                      .fontFamily(bold)
                      .color(darkFontGrey)
                      .size(18)
                      .make()
                      .marginOnly(left: 20),
                  SizedBox(
                    height: 220,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: accountNameList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Image.asset(
                            accountIcons[index],
                            width: 20,
                          ),
                          title: accountNameList[index]
                              .text
                              .size(16)
                              .color(darkFontGrey)
                              .fontFamily(regular)
                              .make(),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            color: fontGrey,
                            size: 20,
                          ),
                        ).box.make();
                      },
                    ),
                  ),
                ],
              )
                  .box
                  .white
                  .outerShadowLg
                  .roundedLg
                  .border(color: grey)
                  .margin(const EdgeInsets.all(12))
                  .make(),
              10.heightBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  10.heightBox,
                  "Notification"
                      .text
                      .size(18)
                      .color(darkFontGrey)
                      .fontFamily(bold)
                      .make()
                      .marginOnly(left: 20),
                  ListTile(
                    leading: Image.asset(
                      icNotif,
                      width: 20,
                    ),
                    title: "Pop-up Notification"
                        .text
                        .color(darkFontGrey)
                        .fontFamily(regular)
                        .make(),
                    trailing: Switch(
                      activeColor: blue,
                      value: true,
                      onChanged: ((value) {}),
                    ),
                  ),
                ],
              )
                  .box
                  .white
                  .outerShadowLg
                  .roundedLg
                  .border(color: grey)
                  .margin(const EdgeInsets.all(12))
                  .make(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  10.heightBox,
                  "Other"
                      .text
                      .fontFamily(bold)
                      .color(darkFontGrey)
                      .size(18)
                      .make()
                      .marginOnly(left: 20),
                  SizedBox(
                    height: 165,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: otherNameList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Image.asset(
                            otherIconsList[index],
                            width: 20,
                          ),
                          title: otherNameList[index]
                              .text
                              .size(16)
                              .color(darkFontGrey)
                              .fontFamily(regular)
                              .make(),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            color: fontGrey,
                            size: 20,
                          ),
                        ).box.make();
                      },
                    ),
                  ),
                ],
              )
                  .box
                  .white
                  .outerShadowLg
                  .roundedLg
                  .border(color: grey)
                  .margin(const EdgeInsets.all(12))
                  .make(),
              10.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
