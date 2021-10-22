import 'package:flutter/material.dart';

// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddProject {
  CollectionReference projects = FirebaseFirestore.instance.collection('projects');
  Future<void> addProject(name, date, hours) {
    return projects.add({'name': name, 'date': date, 'age': hours});
  }
}
