import 'package:healthoholic/const/const.dart';
import 'package:healthoholic/const/strings.dart';
import 'package:healthoholic/controllers/home_controller.dart';
import 'package:healthoholic/views/actvity_screen.dart/activity_screen.dart';
import 'package:healthoholic/views/home_screen/home_screen.dart';
import 'package:healthoholic/views/profile_screen/profile_screen.dart';
import 'package:healthoholic/views/location_screen/nearby_fitness_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHomeIcon,
            
            color: darkFontGrey,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icActivityIcon,
            
            color: darkFontGrey,
          ),
          label: activity),
      BottomNavigationBarItem(
          icon: Image.asset(
            icWorkoutIcon,
            
            color: darkFontGrey,
          ),
          label: workout),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfileIcon,
            
            color: darkFontGrey,
          ),
          label: profile),
    ];

    var navBody = [
      const HomeScreen(),
      const ActivityScreen(),
      const NearbyFitnessScreen(),
      const ProfileScreen(),
    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
              child: navBody.elementAt(controller.currentnavIndex.value)))
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentnavIndex.value,
          items: navbarItem,
          backgroundColor: whiteColor,
          iconSize: 30,
          
          type: BottomNavigationBarType.fixed,
          selectedItemColor: blue,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          onTap: (value) {
            controller.currentnavIndex.value = value;
          },
        ),
      ),
    );
  }
}
