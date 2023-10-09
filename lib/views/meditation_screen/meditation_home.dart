import 'dart:async';

import 'package:healthoholic/const/const.dart';

class MeditationStartScreen extends StatefulWidget {
  const MeditationStartScreen({super.key});

  @override
  State<MeditationStartScreen> createState() => _MeditationStartScreenState();
}

class _MeditationStartScreenState extends State<MeditationStartScreen> {
  int _min = 45;
  int _sec = 00;
  int _hr = 1;
  var isPressed = 1;
  late Timer _timer;

  // Store the remaining time when pausing
  int _remainingSec = 0;
  int _remainingMin = 0;
  int _remainingHr = 0;

  void _startTimer() {
    isPressed = 2;

    // Check if there's remaining time to resume
    if (_remainingSec > 0 || _remainingMin > 0 || _remainingHr > 0) {
      _sec = _remainingSec;
      _min = _remainingMin;
      _hr = _remainingHr;
    } else {
      _sec = 59;
      _min = 44;
      _hr = 1;
    }

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_sec > 0) {
        setState(() {
          _sec--;
        });
      } else {
        if (_min > 0) {
          setState(() {
            _min--;
            _sec = 59;
          });
        } else {
          if (_hr > 0) {
            setState(() {
              _hr--;
              _min = 59;
              _sec = 59;
            });
          } else {
            // Timer has reached 0 for all values, you can handle it here.
            _timer.cancel();
          }
        }
      }
    });
  }

  void _resetTime() {
    isPressed = 1;
    setState(() {
      _min = 45;
      _sec = 00;
      _hr = 1;
      _timer.cancel();
    });
  }

  void _resumeTime() {
    isPressed = 2;
    _startTimer();
    setState(() {
      
    });
  }

  void _pausetime() {
    isPressed = 3;
    _remainingSec = _sec;
    _remainingMin = _min;
    _remainingHr = _hr;
    setState(() {
      
    });
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(backgroundColor: whiteColor),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          30.heightBox,
          "Meditation"
              .text
              .fontFamily(bold)
              .size(25)
              .color(darkFontGrey)
              .makeCentered(),
          30.heightBox,
          "Start trying meditation"
              .text
              .fontFamily(regular)
              .size(18)
              .color(fontGrey)
              .makeCentered(),
          30.heightBox,
          Image.asset(
            dpMed,
            fit: BoxFit.fill,
            width: 300,
          ),
          30.heightBox,
          "$_hr:$_min:$_sec"
              .text
              .color(fontGrey)
              .size(22)
              .fontFamily(semibold)
              .makeCentered(),
          20.heightBox,
          ElevatedButton(
              onPressed: () {
                isPressed == 1 ? _startTimer() : isPressed == 2 ? _pausetime() : _resumeTime();
              },
              child: isPressed == 1 ? "Start Now".text.white.bold.size(20).make() : isPressed == 2 ? "Pause".text.white.bold.size(20).make() : "Resume".text.white.bold.size(20).make()),
          ElevatedButton(
              onPressed: () {
                _resetTime();
              },
              child: "Reset".text.white.bold.size(20).make())
        ]),
      ),
    );
  }
}
