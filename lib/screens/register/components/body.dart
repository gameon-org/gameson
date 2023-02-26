import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../../home/components/categories.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Body> {
  int _activeStepIndex = 0;

  TextEditingController sports = TextEditingController();
  TextEditingController gameType = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController time = TextEditingController();
  TextEditingController wantKit = TextEditingController();
  String dropdownValue = '1A side';
  String? gender;
  List<Step> stepList() => [
        Step(
          state: _activeStepIndex <= 0 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex >= 0,
          title: const Text(''),
          content: Container(
            child: Column(
              children: [
                // TextField(
                //   controller: sports,
                //   decoration: const InputDecoration(
                //     border: OutlineInputBorder(),
                //     labelText: 'Choose Your Sports',
                //   ),
                // ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Choose Your Sports",
                  style: (TextStyle(fontSize: 25)),
                ),
                Categories(),
                const SizedBox(
                  height: 15,
                ),
                // TextField(
                //   controller: gameType,
                //   decoration: const InputDecoration(
                //     border: OutlineInputBorder(),
                //     labelText: 'Game Type',
                //   ),
                // ),
                Text(
                  "Game Type",
                  style: (TextStyle(fontSize: 25)),
                ),
                DropdownButton<String>(
                  value: dropdownValue,
                  items: <String>[
                    '1A side',
                    '2A side',
                    '3A side',
                    '4A side',
                    '5A side',
                    '6A side',
                    '7A side',
                    '8A side',
                    '9A side',
                    '10A side',
                    '11A side'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(fontSize: 20),
                      ),
                    );
                  }).toList(),
                  // Step 5.
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                ),

                const SizedBox(
                  height: 50,
                ),
                TextField(
                  controller: age,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Age',
                  ),
                ),
              ],
            ),
          ),
        ),
        Step(
            state:
                _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
            isActive: _activeStepIndex >= 1,
            title: const Text(''),
            content: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  // TextField(
                  //   controller: location,
                  //   decoration: const InputDecoration(
                  //     border: OutlineInputBorder(),
                  //     labelText: 'Want Playing-kit',
                  //   ),
                  // ),
                  Text(
                    "Want Playing-kit",
                    style: (TextStyle(fontSize: 25)),
                  ),
                  Column(
                    children: [
                      RadioListTile(
                        title: Text("Yes"),
                        value: "yes",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text("No"),
                        value: "no",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: location,
                    style: (TextStyle(fontSize: 18)),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Location',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    style: (TextStyle(fontSize: 18)),
                    controller: date,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Date',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    style: (TextStyle(fontSize: 18)),
                    controller: time,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Time',
                    ),
                  ),
                ],
              ),
            )),
        Step(
            state: StepState.complete,
            isActive: _activeStepIndex >= 2,
            title: const Text(''),
            content: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Sports: ${sports.text}'),
                Text('Game Type: ${gameType.text}'),
                Text('Age : ${age.text}'),
                Text('Want Playing-Kit : ${wantKit.text}'),
                Text('Date : ${date.text}'),
                Text('Time : ${time.text}'),
                Text('Location : ${location.text}'),
              ],
            )))
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Host a Match',
          style: (TextStyle(color: Colors.black)),
        ),
      ),
      body: Stepper(
        type: StepperType.horizontal,
        currentStep: _activeStepIndex,
        steps: stepList(),
        onStepContinue: () {
          if (_activeStepIndex < (stepList().length - 1)) {
            setState(() {
              _activeStepIndex += 1;
            });
          } else {
            print('Submited');
          }
        },
        onStepCancel: () {
          if (_activeStepIndex == 0) {
            return;
          }

          setState(() {
            _activeStepIndex -= 1;
          });
        },
        onStepTapped: (int index) {
          setState(() {
            _activeStepIndex = index;
          });
        },
        // controlsBuilder: (context, {onStepContinue, onStepCancel}) {
        //   final isLastStep = _activeStepIndex == stepList().length - 1;
        //   return Container(
        //     child: Row(
        //       children: [
        //         Expanded(
        //           child: ElevatedButton(
        //             onPressed: onStepContinue,
        //             child: (isLastStep)
        //                 ? const Text('Submit')
        //                 : const Text('Next'),
        //           ),
        //         ),
        //         const SizedBox(
        //           width: 10,
        //         ),
        //         if (_activeStepIndex > 0)
        //           Expanded(
        //             child: ElevatedButton(
        //               onPressed: onStepCancel,
        //               child: const Text('Back'),
        //             ),
        //           )
        //       ],
        //     ),
        //   );
        // },
      ),
    );
  }
}
