
import 'package:healthoholic/const/const.dart';
import 'package:healthoholic/views/workout_tracker/panel_widget.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class WorkoutTrackerScreen extends StatefulWidget {
  const WorkoutTrackerScreen({super.key});
  

  @override
  State<WorkoutTrackerScreen> createState() => _WorkoutTrackerScreenState();
}

class _WorkoutTrackerScreenState extends State<WorkoutTrackerScreen> {
  final panelController = PanelController();
  
  @override
  Widget build(BuildContext context) {
    final panelHeightOpened = MediaQuery.of(context).size.height *0.6;
    final panelHeightClosed = MediaQuery.of(context).size.height *0.1;
    
    return Scaffold(
      backgroundColor: bluecolor,
      appBar: AppBar(
        backgroundColor: blue,
        automaticallyImplyLeading: true,
        leading: const Icon(Icons.arrow_back,color: whiteColor,).onTap(() {
          Get.back();
        }),
        title: "Workout".text.white.fontFamily(bold).size(20).make(),
      ),
      body: SlidingUpPanel(
        controller: panelController,
        maxHeight: panelHeightOpened,
        minHeight: panelHeightClosed,
        parallaxEnabled: true,
        parallaxOffset: 0.5,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        panelBuilder: (controller) => PanelWidget(
          panelController: panelController,
          controller: controller),
        body: Column(
          
          children: [
            const SizedBox(height: 200,),
            Stack(
              alignment: Alignment.topCenter,
              
              children: [
              Image.asset(icGM).box.make(),
              
              Image.asset(icWorkoutGraph).box.padding(const EdgeInsets.symmetric(vertical: 70)).make(),
              ])
            
          ],
        )
      ),
    );
  }
}