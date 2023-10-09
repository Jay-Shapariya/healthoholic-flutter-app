import 'package:healthoholic/const/const.dart';

class StepScreen extends StatelessWidget {
  const StepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: "Step Count"
            .text
            .size(20)
            .fontFamily(semibold)
            .color(darkFontGrey)
            .make(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                20.widthBox,
                Image.asset(
                  icJogging,
                  width: 70,
                  fit: BoxFit.cover,
                ),
                20.widthBox,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.heightBox,
                    "50,483"
                        .text
                        .color(darkFontGrey)
                        .size(20)
                        .fontFamily(bold)
                        .make(),
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
              ],
            ),
            10.heightBox,
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 12,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Row(
                      children: [
                        "7854"
                            .text
                            .fontFamily(bold)
                            .size(18)
                            .color(darkFontGrey)
                            .make(),
                        5.widthBox,
                        "Steps"
                            .text
                            .fontFamily(semibold)
                            .size(15)
                            .color(darkFontGrey)
                            .make(),
                      ],
                    ),
                    trailing: "July 12".text.fontFamily(regular).color(fontGrey).make(),
                  ).box.white.outerShadow.roundedSM.make().marginOnly(bottom: 12);
                },
              )
            )
          ],
        ),
      ),
    );
  }
}
