import 'package:healthoholic/const/const.dart';
import 'package:healthoholic/const/strings.dart';
import 'package:healthoholic/widgets_common/bg_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 10),
        //   child: IconButton(
        //       icon: const Icon(
        //         Icons.add_circle_rounded,
        //         color: whiteColor,
        //         size: 40,
        //       ),
        //       onPressed: () {}),
        // ),
        title: appname.text.fontFamily(bold).size(23).make(),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 35,
              child: Image.asset(
                icProfile,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(children: [
          TextFormField(
            decoration: const InputDecoration(
                isDense: true,
                fillColor: whiteColor,
                contentPadding: EdgeInsets.only(top: 15),
                prefixIcon: Icon(
                  Icons.search,
                  size: 30,
                  color: fontGrey,
                ),
                iconColor: whiteColor,
                hintText: "Search here...",
                hintStyle: TextStyle(
                  fontFamily: regular,
                  color: fontGrey,
                ),
                filled: true,
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    borderSide: BorderSide(color: blue)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    borderSide: BorderSide(color: blue))),
          ),
          40.heightBox,
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: featureTitles.length,
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 200,
                ),
                itemBuilder: (context, index) {
                  
                        
                  return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                        const Spacer(),
                        Align(
                            alignment: Alignment.center,
                            child: Image.asset(featureIconList[index])),
                        const Spacer(),
                        featureTitles[index]
                            .text
                            .size(15)
                            .align(TextAlign.center)
                            .fontFamily(semibold)
                            .color(Colors.black)
                            .make(),
                        10.heightBox
                      ])
                      .box
                      .color(whiteColor)
                      .roundedSM.padding(const EdgeInsets.all(8))
                      .outerShadowMd
                      .make().onTap(() {
                        Get.to(homescreenWidgetScreenList[index]);
                      })
                      ;
                },
              )
            ),
          )
        ]),
      ),
    ));
  }
}
