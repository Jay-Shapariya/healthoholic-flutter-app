
import 'package:healthoholic/const/const.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PanelWidget extends StatelessWidget {
  const PanelWidget({super.key, required this.controller,required this.panelController});
  final ScrollController controller;
  final PanelController panelController;

  @override
  Widget build(BuildContext context) {
    
    return ListView(
      
      controller: controller,
      padding: EdgeInsets.zero,
      children: <Widget>[
        Padding(
          
          padding: const EdgeInsets.all(12.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 45,
                  height: 5,
                  decoration:  const BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(12))),
                ).box.makeCentered().onTap(() {
                  panelController.isPanelOpen ? panelController.close() : panelController.open();
                }),
                20.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    
                  "Daily Workout Schedule".text.fontFamily(semibold).size(16).make(),
                  5.widthBox,
                  "Check".text.bold.white.make().box.color(blue).roundedSM.padding(const EdgeInsets.all(7)).outerShadowLg.make().onTap(() { })
                ],).box.color(lightblue).padding(const EdgeInsets.all(10)).roundedLg.outerShadowMd.make(),
                20.heightBox,
                "What do you want to train".text.bold.size(20).make(),
                15.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      
                      children: [
                        20.heightBox,
                        "Fullbody Workout".text.fontFamily(semibold).size(18).make(),
                        10.heightBox,
                        "11 Exercise | 32 mins".text.size(16).color(fontGrey).make(),
                        15.heightBox,
                        "View more".text.size(16).white.fontFamily(semibold).make().box.color(blue).roundedLg.padding(const EdgeInsets.all(7)).make(),
                        20.heightBox
                      ],
                    ),
                    // .box.margin(const EdgeInsets.only(left: 10)).make(),
                    CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.white54,
                      child: Image.asset(icFullbody,),).box.margin(const EdgeInsets.only(top: 10,bottom: 10)).make()
                  ],
                ).box.color(lightblue).roundedLg.outerShadowMd.margin(const EdgeInsets.only(right: 10,left: 10)).make(),
                15.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      
                      children: [
                        20.heightBox,
                        "Lowbody Workout".text.fontFamily(semibold).size(18).make(),
                        10.heightBox,
                        "21 Exercise | 52 mins".text.size(16).color(fontGrey).make(),
                        15.heightBox,
                        "View more".text.size(16).white.fontFamily(semibold).make().box.color(blue).roundedLg.padding(const EdgeInsets.all(7)).make(),
                        20.heightBox
                      ],
                    ),
                    // .box.margin(const EdgeInsets.only(left: 10)).make(),
                    CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.white54,
                      child: Image.asset(icLowbody,),).box.margin(const EdgeInsets.only(top: 10,bottom: 10)).make()
                  ],
                ).box.color(lightblue).roundedLg.outerShadowMd.margin(const EdgeInsets.only(right: 10,left: 10)).make(),
                15.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      
                      children: [
                        20.heightBox,
                        "Abb Workout".text.fontFamily(semibold).size(18).make(),
                        10.heightBox,
                        "11 Exercise | 22 mins".text.size(16).color(fontGrey).make(),
                        15.heightBox,
                        "View more".text.size(16).white.fontFamily(semibold).make().box.color(blue).roundedLg.padding(const EdgeInsets.all(7)).make(),
                        20.heightBox
                      ],
                    ),
                    // .box.margin(const EdgeInsets.only(left: 10)).make(),
                    CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.white54,
                      child: Image.asset(icAbb,),).box.margin(const EdgeInsets.only(top: 10,bottom: 10)).make()
                  ],
                ).box.color(lightblue).roundedLg.outerShadowMd.margin(const EdgeInsets.only(right: 10,left: 10)).make()
              
              ],
            ),
        ),
 
      ],
    );
  }
}
