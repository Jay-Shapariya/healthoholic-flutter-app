
import 'package:healthoholic/const/const.dart';
import 'package:healthoholic/widgets_common/custom_textfield.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: const Icon(Icons.arrow_back,color: whiteColor,)),
        automaticallyImplyLeading: false,
        backgroundColor: blue,
        foregroundColor: whiteColor,
        title: "Edit Profile".text.size(20).fontFamily(bold).color(whiteColor).make(),
        
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(children: [
            Stack(children: [
              Image.asset(
                      icProfile,
                      width: 130,
                      fit: BoxFit.cover,
                    ),
                    const Icon(Icons.edit_square,color: darkFontGrey,).box.make().marginOnly(top: 103,left: 95).onTap(() { }),
            ],),
            20.heightBox,
            customTextField(title: "Username",hint: "sarah",isPass: false),
            10.heightBox,
            customTextField(title: "Email",hint: "sarah@email.com",isPass: false),
            10.heightBox,
            customTextField(title: "Phone no", hint: "9083823732",isPass: false),
            10.heightBox,
            customTextField(title: "Password",isPass: true,hint: "*******"),
            10.heightBox,
            customTextField(title: "Height",isPass: false,hint: "180cm"),
            10.heightBox,
            customTextField(title: "Weight",isPass: false,hint: "65kg"),
            10.heightBox,
            customTextField(title: "Age",isPass: false,hint: "21"),
            35.heightBox,
            SizedBox(height: 35,width: context.screenWidth-30,child: "Update".text.align(TextAlign.center).size(16).white.fontFamily(semibold).makeCentered(),).box.roundedSM.color(bluecolor).make(),
            10.heightBox
          ]),
        ),
      ),
    );
  }
}