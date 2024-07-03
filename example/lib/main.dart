import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_week_view/flutter_week_view.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

/// First plugin test method.
void main() => runApp(_FlutterWeekViewDemoApp());

var dateList = [
  Header(DateTime.now().add(Duration(days: 0)), 'Adit1'),
  Header(DateTime.now().add(Duration(days: 1)), 'Adit2'),
  Header(DateTime.now().add(Duration(days: 2)), 'Adit3'),
  Header(DateTime.now().add(Duration(days: 3)), 'Adit4'),
  Header(DateTime.now().add(Duration(days: 4)), 'Adit5'),
  Header(DateTime.now().add(Duration(days: 5)), 'Adit7'),
  Header(DateTime.now().add(Duration(days: 6)), 'Adit8'),
  Header(DateTime.now().add(Duration(days: 8)), 'Adit9'),
  Header(DateTime.now().add(Duration(days: 9)), 'Adit10'),
  Header(DateTime.now().add(Duration(days: 10)), 'Adit11')
];

/// The demo material app.
class _FlutterWeekViewDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Week View Demo',
        initialRoute: '/',
        routes: {
          '/': (context) => inScaffold(body: _FlutterWeekViewDemoAppBody()),
          '/week-view': (context) => inScaffold(
                title: 'Demo week view',
                body: _DemoWeekView(),
              ),
        },
      );

  static Widget inScaffold({
    String title = 'Flutter Week View',
    required Widget body,
  }) =>
      Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: body,
      );
}

/// The demo app body widget.
class _FlutterWeekViewDemoAppBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String github = 'https://github.com/Skyost/FlutterWeekView';
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Text(
                'Flutter Week View demo',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('Demo week view'),
              onPressed: () => Navigator.pushNamed(context, '/week-view'),
            ),

            const Expanded(
              child: SizedBox.expand(),
            ),
            GestureDetector(
              onTap: () async {
                Uri uri = Uri.parse(github);
                if (await launcher.canLaunchUrl(uri)) {
                  await launcher.launchUrl(uri);
                }
              },
              child: Text(
                github,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.blue[800],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// The demo week view widget.
class _DemoWeekView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime date = DateTime(now.year, now.month, now.day);
    return WeekView(
      initialTime: DateTime.now(),
      dates: dateList,
      //    style: WeekViewStyle(dayViewWidth: 120),
      events: [
        FlutterWeekViewEvent(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                4.0,
              ),
            ),
            color: Colors.grey,

            ///status color with opacity used here
          ),
          title: 'An event 1',
          description: 'A description 1',
          start: date.add(Duration(hours: 9, minutes: 0)),
          end: date.add(const Duration(hours: 10, minutes: 30)),
        ),

        FlutterWeekViewEvent(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                4.0,
              ),
            ),
            color: Colors.grey,

            ///status color with opacity used here
          ),
          title: 'An event 1',
          description: 'A description 1',
          start: date.add(Duration(hours: 9, minutes: 30)),
          end: date.add(const Duration(hours: 10, minutes: 30)),
        ),
        FlutterWeekViewEvent(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  4.0,
                ),
              ),
              color: Colors.grey,

              ///status color with opacity used here
            ),
            title: 'An event 1',
            description: 'A description 1',
            start: date.add(Duration(hours: 9, minutes: 0)),
            end: date.add(const Duration(hours: 10, minutes: 0)),
            onTap: () {}),

        FlutterWeekViewEvent(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                4.0,
              ),
            ),
            color: Colors.grey,

            ///status color with opacity used here
          ),
          title: 'An event 1',
          description: 'A description 1',
          start: date.add(Duration(hours: 10, minutes: 30)),
          end: date.add(const Duration(hours: 11, minutes: 30)),
        ),
        FlutterWeekViewEvent(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                4.0,
              ),
            ),
            color: Colors.grey,

            ///status color with opacity used here
          ),
          title: 'An event 1',
          description: 'A description 1',
          start: date.add(Duration(hours: 10, minutes: 30)),
          end: date.add(const Duration(hours: 11, minutes: 30)),
        ),
        FlutterWeekViewEvent(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                4.0,
              ),
            ),
            color: Colors.grey,

            ///status color with opacity used here
          ),
          title: 'An event 1',
          description: 'A description 1',
          start: date.add(Duration(hours: 10, minutes: 30)),
          end: date.add(const Duration(hours: 11, minutes: 30)),
        ),

        FlutterWeekViewEvent(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                4.0,
              ),
            ),
            color: Colors.grey,

            ///status color with opacity used here
          ),
          title: 'An event 1',
          description: 'A description 1',
          start: date.add(Duration(hours: 10, minutes: 0)),
          end: date.add(const Duration(hours: 11, minutes: 30)),
        ),

        // FlutterWeekViewEvent(
        //   decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(
        //         4.0,
        //       ),
        //     ),
        //     color: Colors.grey,
        //
        //     ///status color with opacity used here
        //   ),
        //   title: 'An event 1',
        //   description: 'A description 1',
        //   start: date.add(Duration(hours: 2)),
        //   end: date.add(const Duration(hours: 5, minutes: 30)),
        // ),
        // FlutterWeekViewEvent(
        //   backgroundColor: Colors.white,
        //   decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(
        //         4.0,
        //       ),
        //     ),
        //     color: Colors.greenAccent,
        //
        //     ///status color with opacity used here
        //   ),
        //   title: 'An event 1',
        //   description: 'A description 2',
        //   textStyle: TextStyle(color: Colors.black),
        //   start: date.add(Duration(hours: 1)),
        //   end: date.add(const Duration(hours: 4, minutes: 30)),
        // ),
        // FlutterWeekViewEvent(
        //   title: 'An event 1',
        //   description: 'A description 3',
        //   start: date.add(Duration(hours: 1)),
        //   end: date.add(const Duration(hours: 4, minutes: 30)),
        // ),
        // FlutterWeekViewEvent(
        //   title: 'An event 1',
        //   description: 'A description 4',
        //   start: date,
        //   end: date.add(const Duration(hours: 6, minutes: 30)),
        // ),
        // FlutterWeekViewEvent(
        //   title: 'An event 2',
        //   description: 'A description 2',
        //   start: date.add(const Duration(hours: 19)),
        //   end: date.add(const Duration(hours: 22)),
        // ),
        // FlutterWeekViewEvent(
        //   backgroundColor: Colors.white,
        //   decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(
        //         4.0,
        //       ),
        //     ),
        //     color: Colors.teal,
        //
        //     ///status color with opacity used here
        //   ),
        //   title: '',
        //   description: '',
        //   textStyle: TextStyle(color: Colors.black),
        //   start: date.add(Duration(hours: 1)),
        //   end: date.add(const Duration(hours: 4, minutes: 30)),
        // ),
        //
        // /// one block
        // FlutterWeekViewEvent(
        //   backgroundColor: Colors.green,
        //   /* decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.all(Radius.circular(4.0)),
        //     gradient: LinearGradient(
        //       begin: Alignment.topLeft,
        //       end: Alignment(-0.90, -0.92),
        //       stops: [0.0, 0.5, 0.5, 1],
        //       colors: [
        //         Color(0xFFE5E5E5),
        //         Color(0xFFE5E5E5),
        //         Colors.white,
        //         Colors.white,
        //       ],
        //       tileMode: TileMode.repeated,
        //     ),
        //   ),*/
        //   title: '1',
        //   description: '',
        //   textStyle: TextStyle(color: Colors.white),
        //   start: date.add(Duration(hours: 7)),
        //   end: date.add(const Duration(hours: 9, minutes: 30)),
        // ),
        //
        // ///end one block
        //
        // /// two block
        // FlutterWeekViewEvent(
        //   backgroundColor: Colors.white,
        //   decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(
        //         4.0,
        //       ),
        //     ),
        //     color: Colors.lightBlueAccent,
        //
        //     ///status color with opacity used here
        //   ),
        //   title: '2',
        //   description: '',
        //   textStyle: const TextStyle(color: Colors.black),
        //   start: date.add(const Duration(hours: 9, minutes: 30)),
        //   end: date.add(const Duration(hours: 12, minutes: 0)),
        // ),
        // FlutterWeekViewEvent(
        //   backgroundColor: Colors.white,
        //   decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(
        //         4.0,
        //       ),
        //     ),
        //     color: Colors.brown,
        //
        //     ///status color with opacity used here
        //   ),
        //   title: '2',
        //   description: '',
        //   textStyle: const TextStyle(color: Colors.black),
        //   start: date.add(const Duration(hours: 9, minutes: 30)),
        //   end: date.add(const Duration(hours: 12, minutes: 0)),
        // ),
        //
        // ///end two block
        //
        // FlutterWeekViewEvent(
        //   backgroundColor: Colors.white,
        //   decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(
        //         4.0,
        //       ),
        //     ),
        //     color: Colors.indigo,
        //
        //     ///status color with opacity used here
        //   ),
        //   title: '10 min',
        //   description: 'Desc: 10 min ',
        //   textStyle: const TextStyle(color: Colors.black),
        //   start: date.add(const Duration(hours: 16, minutes: 0)),
        //   end: date.add(const Duration(hours: 16, minutes: 10)),
        // ),
        // FlutterWeekViewEvent(
        //   backgroundColor: Colors.white,
        //   decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(
        //         4.0,
        //       ),
        //     ),
        //     color: Colors.deepPurpleAccent,
        //
        //     ///status color with opacity used here
        //   ),
        //   title: '15 min',
        //   description: 'Desc: 15 min ',
        //   textStyle: const TextStyle(color: Colors.black),
        //   start: date.add(const Duration(hours: 17, minutes: 0)),
        //   end: date.add(const Duration(hours: 17, minutes: 15)),
        // ),
        //
        // /// three block
        // FlutterWeekViewEvent(
        //   backgroundColor: Colors.white,
        //   decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(
        //         4.0,
        //       ),
        //     ),
        //     color: Colors.deepPurpleAccent,
        //
        //     ///status color with opacity used here
        //   ),
        //   title: '3',
        //   description: '',
        //   textStyle: const TextStyle(color: Colors.black),
        //   start: date.add(const Duration(hours: 12, minutes: 1)),
        //   end: date.add(const Duration(hours: 13, minutes: 30)),
        // ),
        // FlutterWeekViewEvent(
        //   backgroundColor: Colors.white,
        //   decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(
        //         4.0,
        //       ),
        //     ),
        //     color: Colors.purpleAccent,
        //
        //     ///status color with opacity used here
        //   ),
        //   title: '3',
        //   description: '',
        //   textStyle: const TextStyle(color: Colors.black),
        //   start: date.add(const Duration(hours: 12, minutes: 1)),
        //   end: date.add(const Duration(hours: 13, minutes: 30)),
        // ),
        // FlutterWeekViewEvent(
        //   backgroundColor: Colors.white,
        //   decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(
        //         4.0,
        //       ),
        //     ),
        //     color: Colors.deepOrangeAccent,
        //
        //     ///status color with opacity used here
        //   ),
        //   title: '3',
        //   description: '',
        //   textStyle: const TextStyle(color: Colors.black),
        //   start: date.add(const Duration(hours: 12, minutes: 1)),
        //   end: date.add(const Duration(hours: 13, minutes: 30)),
        // ),
        //
        // ///end three block
        //
        // /// four block
        // FlutterWeekViewEvent(
        //   backgroundColor: Colors.white,
        //   decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(
        //         4.0,
        //       ),
        //     ),
        //     color: Colors.amber,
        //
        //     ///status color with opacity used here
        //   ),
        //   title: '3',
        //   description: '',
        //   textStyle: const TextStyle(color: Colors.black),
        //   start: date.add(const Duration(hours: 13, minutes: 32)),
        //   end: date.add(const Duration(hours: 14, minutes: 30)),
        // ),
        // FlutterWeekViewEvent(
        //   backgroundColor: Colors.white,
        //   decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(
        //         4.0,
        //       ),
        //     ),
        //     color: Colors.cyan,
        //
        //     ///status color with opacity used here
        //   ),
        //   title: '3',
        //   description: '',
        //   textStyle: const TextStyle(color: Colors.black),
        //   start: date.add(const Duration(hours: 13, minutes: 32)),
        //   end: date.add(const Duration(hours: 14, minutes: 30)),
        // ),
        // FlutterWeekViewEvent(
        //   backgroundColor: Colors.white,
        //   decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(
        //         4.0,
        //       ),
        //     ),
        //     color: Colors.teal,
        //
        //     ///status color with opacity used here
        //   ),
        //   title: '3',
        //   description: '',
        //   textStyle: const TextStyle(color: Colors.black),
        //   start: date.add(const Duration(hours: 13, minutes: 32)),
        //   end: date.add(const Duration(hours: 14, minutes: 30)),
        // ),
        // FlutterWeekViewEvent(
        //   backgroundColor: Colors.white,
        //   decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(
        //         4.0,
        //       ),
        //     ),
        //     color: Colors.indigo,
        //
        //     ///status color with opacity used here
        //   ),
        //   title: '3',
        //   description: '',
        //   textStyle: const TextStyle(color: Colors.black),
        //   start: date.add(const Duration(hours: 13, minutes: 32)),
        //   end: date.add(const Duration(hours: 14, minutes: 30)),
        // ),
        //
        // ///end four block
        //
        // /// five block
        // FlutterWeekViewEvent(
        //   backgroundColor: Colors.white,
        //   decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(
        //         4.0,
        //       ),
        //     ),
        //     color: Colors.white24,
        //
        //     ///status color with opacity used here
        //   ),
        //   title: '3',
        //   description: '',
        //   textStyle: const TextStyle(color: Colors.black),
        //   start: date.add(const Duration(hours: 14, minutes: 32)),
        //   end: date.add(const Duration(hours: 15, minutes: 30)),
        // ),
        // FlutterWeekViewEvent(
        //   backgroundColor: Colors.white,
        //   decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(
        //         4.0,
        //       ),
        //     ),
        //     color: Colors.tealAccent,
        //
        //     ///status color with opacity used here
        //   ),
        //   title: '3',
        //   description: '',
        //   textStyle: const TextStyle(color: Colors.black),
        //   start: date.add(const Duration(hours: 14, minutes: 32)),
        //   end: date.add(const Duration(hours: 15, minutes: 30)),
        // ),
        // FlutterWeekViewEvent(
        //   backgroundColor: Colors.white,
        //   decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(
        //         4.0,
        //       ),
        //     ),
        //     color: Colors.redAccent,
        //
        //     ///status color with opacity used here
        //   ),
        //   title: '3',
        //   description: '',
        //   textStyle: const TextStyle(color: Colors.black),
        //   start: date.add(const Duration(hours: 14, minutes: 32)),
        //   end: date.add(const Duration(hours: 15, minutes: 30)),
        // ),
        // FlutterWeekViewEvent(
        //   backgroundColor: Colors.white,
        //   decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(
        //         4.0,
        //       ),
        //     ),
        //     color: Colors.redAccent,
        //
        //     ///status color with opacity used here
        //   ),
        //   title: '3',
        //   description: '',
        //   textStyle: const TextStyle(color: Colors.black),
        //   start: date.add(const Duration(hours: 14, minutes: 32)),
        //   end: date.add(const Duration(hours: 15, minutes: 30)),
        // ),
        // FlutterWeekViewEvent(
        //   backgroundColor: Colors.white,
        //   decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(
        //         4.0,
        //       ),
        //     ),
        //     color: Colors.deepOrange,
        //
        //     ///status color with opacity used here
        //   ),
        //   title: '3',
        //   description: '',
        //   textStyle: const TextStyle(color: Colors.black),
        //   start: date.add(const Duration(hours: 14, minutes: 32)),
        //   end: date.add(const Duration(hours: 15, minutes: 30)),
        // ),
        //
        // ///end five block
        //
        // FlutterWeekViewEvent(
        //   title: 'An event 4',
        //   description: 'A description 4',
        //   start: date.add(const Duration(hours: 20)),
        //   end: date.add(const Duration(hours: 21)),
        // ),
        // FlutterWeekViewEvent(
        //   title: 'An event 5',
        //   description: 'A description 5',
        //   start: date.add(const Duration(hours: 20)),
        //   end: date.add(const Duration(hours: 21)),
        // ),
        //
        // FlutterWeekViewEvent(
        //   decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(
        //         4.0,
        //       ),
        //     ),
        //     color: Colors.grey,
        //
        //     ///status color with opacity used here
        //   ),
        //   title: 'An event 1',
        //   description: 'A description 1',
        //   start: date.add(Duration(days: 1, hours: 1)),
        //   end: date.add(const Duration(days: 1, hours: 5, minutes: 30)),
        // ),
        // FlutterWeekViewEvent(
        //   backgroundColor: Colors.white,
        //   decoration: const BoxDecoration(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(
        //         4.0,
        //       ),
        //     ),
        //     color: Colors.grey,
        //
        //     ///status color with opacity used here
        //   ),
        //   title: 'An event 1',
        //   description: 'A description 2',
        //   textStyle: TextStyle(color: Colors.black),
        //   start: date.add(Duration(days: 1, hours: 1)),
        //   end: date.add(const Duration(days: 1, hours: 5, minutes: 30)),
        // ),
        // FlutterWeekViewEvent(
        //   title: 'An event 1',
        //   description: 'A description 3',
        //   start: date.add(Duration(days: 1, hours: 1)),
        //   end: date.add(const Duration(days: 1, hours: 5, minutes: 30)),
        // ),
      ],
    );
  }
}
