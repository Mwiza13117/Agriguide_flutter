import 'package:flutter/material.dart';

class User {
  String name;
  int age;
  String emailAddress;
  String phoneNumber;
  String location;
  DateTime dateJoined;

  User(
    Type type, {
    required this.name,
    required this.age,
    required this.emailAddress,
    required this.phoneNumber,
    required this.location,
    required this.dateJoined,
  });
}

class UserDetailsScreen extends StatelessWidget {
  final User user;

  const UserDetailsScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: ${user.name}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('Age: ${user.age}'),
            const SizedBox(height: 8),
            Text('Email Address: ${user.emailAddress}'),
            const SizedBox(height: 8),
            Text('Phone Number: ${user.phoneNumber}'),
            const SizedBox(height: 8),
            Text('Location: ${user.location}'),
            const SizedBox(height: 8),
            Text('Date Joined: ${user.dateJoined.toString()}'),
          ],
        ),
      ),
    );
  }
}
