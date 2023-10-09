
import 'package:healthoholic/const/const.dart';
import 'package:healthoholic/const/strings.dart';
import 'package:healthoholic/controllers/auth_conroller.dart';
import 'package:healthoholic/views/home_screen/home.dart';

import 'package:healthoholic/widgets_common/app_logo_widget.dart';
import 'package:healthoholic/widgets_common/custom_textfield.dart';
import 'package:healthoholic/widgets_common/our_button.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
  var controller = Get.put(AuthController());

  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var emailController = TextEditingController();
  var passwordRetypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Join the $appname".text
            .fontFamily(bold)
            .white.size(18).make(),
            15.heightBox,
            Obx(
              ()=> Column(
                children: [
                  customTextField(
                      title: name, hint: nameHint, controller: nameController,isPass: false),
                  customTextField(
                      title: email, hint: emailHint, controller: emailController,isPass: false),
                  customTextField(
                      title: password,
                      hint: passwordHint,
                      isPass: true,
                      controller: passwordController),
                  customTextField(
                      title: retypePassword,
                      hint: passwordHint,
                      isPass: true,
                      controller: passwordRetypeController),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheck,
                        onChanged: (newValue) {
                          setState(() {
                            isCheck = newValue;
                          });
                        },
                        checkColor: whiteColor,
                        activeColor: bluecolor,
                      ),
                      10.widthBox,
                      Expanded(
                        child: RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: "I agree to the ",
                              style: TextStyle(
                                color: fontGrey,
                                fontFamily: regular,
                              )),
                          TextSpan(
                              text: termsandCondition,
                              style: TextStyle(
                                color: bluecolor,
                                fontFamily: regular,
                              )),
                          TextSpan(
                              text: " & ",
                              style: TextStyle(
                                color: fontGrey,
                                fontFamily: regular,
                              )),
                          TextSpan(
                              text: privarcyPolicy,
                              style: TextStyle(
                                color: bluecolor,
                                fontFamily: regular,
                              )),
                        ])),
                      )
                    ],
                  ),
                  5.heightBox,
            
                  controller.isLoging.value ? const CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(amberColor),) : ourButton(
                      color: isCheck == false ? lightGrey : bluecolor,
                      title: signup,
                      textColor: whiteColor,
                      onPress: () async {
                        if (isCheck != false) {
                          controller.isLoging(true);
                          try {
                            await controller
                                .signupMethod(
                                    context: context,
                                    email: emailController.text,
                                    password: passwordController.text)
                                .then(
                              (value) {
                                return controller.storeUserData(
                                  email: emailController.text,
                                  password: passwordController.text,
                                  name: nameController.text,
                                );
                              },
                            ).then((value) {
                              VxToast.show(context, msg: loggedin);
                              Get.offAll(const Home());
                            });
                          } catch (e) {
                            auth.signOut();
                            VxToast.show(context, msg: e.toString());
                            controller.isLoging(false);
                          }
                        }
                      }).box.width(context.screenWidth - 50).make(),
                  10.heightBox,
                  RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: alreadyHaveAccount,
                        style: TextStyle(
                          fontFamily: bold, 
                          color: fontGrey),
                      ),
                      TextSpan(
                        text: login,
                        style: TextStyle(
                          fontFamily: bold, 
                          color: bluecolor),
                      )
                    ]),
                  ).onTap(() {
                    Get.back();
                  }),
            
                  ourButton(title: login, onPress: (){
                    Get.to(()=> const Home());
                  },color: bluecolor,textColor: whiteColor).box.width(context.screenWidth-50).make()
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(const EdgeInsets.all(16))
                  .width(context.screenWidth - 70)
                  .shadowSm
                  .make(),
            ),
          ],
        ),
      ),
    );
  }
}