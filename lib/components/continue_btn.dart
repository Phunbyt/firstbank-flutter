import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class ContinueBtn extends StatelessWidget {
  ContinueBtn({required this.myCallback});

  final VoidCallback myCallback;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myCallback,
      child: Container(
        height: 80,
        width: double.infinity,
        color: kIconColor,
        child: Center(
          child: Text('CONTINUE', style: kButtonStyle),
        ),
      ),
    );
  }
}

class CompleteBtn extends StatefulWidget {
  @override
  _CompleteBtnState createState() => _CompleteBtnState();
}

class _CompleteBtnState extends State<CompleteBtn> {
  bool success = false;
  CountDownController _controller = CountDownController();
  int _duration = 6;
  void caller() {
    Alert(
      context: context,
      type: AlertType.info,
      title: "PROCESSING",
      desc: 'TRANSFER',
      style: AlertStyle(
        descStyle: TextStyle(color: Colors.white, fontSize: 30),
        titleStyle: TextStyle(color: Colors.white, fontSize: 30),
      ),
      content: CircularCountDownTimer(
        // Countdown duration in Seconds.
        duration: _duration,

        // Countdown initial elapsed Duration in Seconds.
        initialDuration: 0,

        // Controls (i.e Start, Pause, Resume, Restart) the Countdown Timer.
        controller: _controller,

        // Width of the Countdown Widget.
        width: MediaQuery.of(context).size.width / 2,

        // Height of the Countdown Widget.
        height: MediaQuery.of(context).size.height / 2,

        // Ring Color for Countdown Widget.
        ringColor: Colors.grey[300]!,

        // Ring Gradient for Countdown Widget.
        ringGradient: null,

        // Filling Color for Countdown Widget.
        fillColor: Colors.purpleAccent[100]!,

        // Filling Gradient for Countdown Widget.
        fillGradient: null,

        // Background Color for Countdown Widget.
        backgroundColor: Colors.purple[500],

        // Background Gradient for Countdown Widget.
        backgroundGradient: null,

        // Border Thickness of the Countdown Ring.
        strokeWidth: 20.0,

        // Begin and end contours with a flat edge and no extension.
        strokeCap: StrokeCap.round,

        // Text Style for Countdown Text.
        textStyle: TextStyle(
            fontSize: 33.0, color: Colors.white, fontWeight: FontWeight.bold),

        // Format for the Countdown Text.
        textFormat: CountdownTextFormat.S,

        // Handles Countdown Timer (true for Reverse Countdown (max to 0), false for Forward Countdown (0 to max)).
        isReverse: true,

        // Handles Animation Direction (true for Reverse Animation, false for Forward Animation).
        isReverseAnimation: false,

        // Handles visibility of the Countdown Text.
        isTimerTextShown: true,

        // Handles the timer start.
        autoStart: true,

        // This Callback will execute when the Countdown Starts.
        onStart: () {
          // Here, do whatever you want
          print('Countdown Started');
        },

        // This Callback will execute when the Countdown Ends.
        onComplete: () {
          // Here, do whatever you want
          print('Countdown Ended');
          Navigator.pop(context);
          setState(() {
            Alert(
              context: context,
              type: AlertType.success,
              title: "TRANSFER",
              desc: 'is Successful',
              style: AlertStyle(
                descStyle: TextStyle(color: Colors.white, fontSize: 30),
                titleStyle: TextStyle(color: Colors.white, fontSize: 30),
              ),
              buttons: [
                DialogButton(
                    child: Text(
                      "DONE",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/dashboard');
                    },
                    width: 120,
                    color: kIconColor)
              ],
            ).show();
          });
          print(success);
        },
      ),
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        caller();
      },
      child: Container(
        height: 80,
        width: double.infinity,
        color: kIconColor,
        child: Center(
          child: Text('CONTINUE', style: kButtonStyle),
        ),
      ),
    );
  }
}

// class CompleteBtn extends StatelessWidget {
//   // final String route;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Alert(
//           context: context,
//           type: AlertType.success,
//           title: "TRANSFER",
//           desc: 'is Successful',
//           style: AlertStyle(
//             descStyle: TextStyle(color: Colors.white, fontSize: 30),
//             titleStyle: TextStyle(color: Colors.white, fontSize: 30),
//           ),
//           buttons: [
//             DialogButton(
//                 child: Text(
//                   "DONE",
//                   style: TextStyle(color: Colors.white, fontSize: 20),
//                 ),
//                 onPressed: () => Navigator.pop(context),
//                 width: 120,
//                 color: kIconColor)
//           ],
//         ).show();
//       },
//       child: Container(
//         height: 80,
//         width: double.infinity,
//         color: kIconColor,
//         child: Center(
//           child: Text('CONTINUE', style: kButtonStyle),
//         ),
//       ),
//     );
//   }
// }
