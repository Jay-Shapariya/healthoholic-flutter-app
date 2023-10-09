import 'package:healthoholic/const/const.dart';
import 'package:healthoholic/views/meditation_screen/meditation_screen.dart';
import 'package:healthoholic/views/workout_tracker/workout_tracker_screen.dart';

const socialIconList = [icFacebookLogo, icGoogleLogo, icTwitterLogo];

const featureIconList = [icWorkout, icDiet, icMeditation, icYoga, icDumbbell];
const featureTitles = [
  "Workout",
  "Diet Recommendation",
  "Meditation",
  "Yoga",
  "Exercise Suggester"
];

const accountIcons = [iconProfile, icDoc, icGraph, icChart];

const accountNameList = [
  "Personal data",
  "Achievement",
  "Activity history",
  "Workout progress"
];

const otherIconsList = [icMsg, icPp, icSetting];
const otherNameList = ["Help", "Privacy policy", "Settings"];
const homescreenWidgetScreenList = [
  WorkoutTrackerScreen(),
  WorkoutTrackerScreen(),
  MeditationScreen(),
];

const meditationNameList = [
  "One: Cobra",
  "Two: Facing dog",
  "Three: Warrior I",
  "Four: Warrior II",
  "Five: Easy pose"
];
const meditationTime = ["15 min", "25 min", "35 min", "22 min", "47 min"];
const meditationImg = [icMed1, icMed2, icMed3, icMed4, icMed5];

const List<Widget> timesList = <Widget>[
  Text('5-10 min'),
  Text('15-10 min'),
  Text('+25 min')
];

const relaxSoundList = [
  'Rainfall',
  'Forest Sound',
  "Ocean Waves",
  "Thunderstorm"
];
const relaxListeningList = [
  '20323 Listening',
  '324243 Listning',
  '74833 Listening',
  '17493 Listning'
];
const relaxSoundTime = ['25 min', '12 min', '16 min', '8 min'];
const relaxSoundImgList = [icRx1, icRx2, icRx3, icRx4];
