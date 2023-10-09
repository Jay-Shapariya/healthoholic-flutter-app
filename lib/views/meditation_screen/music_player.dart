import 'package:healthoholic/const/const.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: "Music Player".text.bold.make(),
        backgroundColor: bluecolor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: whiteColor,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              40.heightBox,
              const CircleAvatar(
                backgroundImage: AssetImage(icRx1),
                radius: 125,
              ).box.makeCentered(),
              40.heightBox,
              "Rainfall".text.bold.color(darkFontGrey).size(26).makeCentered(),
              40.heightBox,
              Slider(
                value: 20,
                max: 100,
                onChanged: (value) {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.shuffle)),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.fast_rewind_sharp, size: 40)),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_circle,
                        size: 40,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.fast_forward_sharp,
                        size: 40,
                      )),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.repeat_outlined)),
                ],
              ),
              40.heightBox
            ],
          ),
        ),
      ),
    );
  }
}
