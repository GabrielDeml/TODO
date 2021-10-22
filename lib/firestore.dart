import 'package:flutter/material.dart';

// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddUser extends StatelessWidget {
  final String name;
  final DateTime date;
  final int hours;

  const AddUser(this.name, this.date, this.hours, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      return users.add({
        'name': name,
        'date': date,
        'age': hours
      });
    }

    return TextButton(
      onPressed: addUser,
      child: const Text(
        "Add User",
      ),
    );
  }
}
