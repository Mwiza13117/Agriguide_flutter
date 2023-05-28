import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DailyActivities extends StatefulWidget {
  const DailyActivities({Key? key}) : super(key: key);

  @override
  _DailyActivitiesState createState() => _DailyActivitiesState();
}

class _DailyActivitiesState extends State<DailyActivities> {
  List<String> activities = [];
  final TextEditingController _activityController = TextEditingController();

  void addActivity(String activity) {
    setState(() {
      activities.add(activity);
    });
  }

  @override
  void dispose() {
    _activityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Activities',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Daily Activities'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: activities.length,
                itemBuilder: (context, index) {
                  final activity = activities[index];
                  return ListTile(
                    title: Text(activity),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _activityController,
                decoration: const InputDecoration(
                  labelText: 'Activity',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  final now = DateTime.now();
                  final formattedDate =
                      DateFormat.yMd().format(now); // Format date as MM/dd/yyyy
                  final formattedTime =
                      DateFormat.Hm().format(now); // Format time as HH:mm
                  final enteredActivity = _activityController.text;
                  final activityWithDateTime =
                      '$enteredActivity at $formattedTime on $formattedDate';
                  addActivity(activityWithDateTime);
                  _activityController.clear(); // Clear the text field
                },
                child: const Text('Add Activity'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const DailyActivities());
}
