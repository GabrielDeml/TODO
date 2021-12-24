import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'sign_in.dart';

class AddProject {
  late SignIn _signIn;
  late CollectionReference projects;

  AddProject(SignIn signIn);
  Future<void> init() async {
    User _user = await _signIn.getCurrentUser();
    this.projects = FirebaseFirestore.instance.collection('users/' + _user.uid + '/projects');
  }

  
  Future<void> addProject(name, date, hours) {
    return projects.add({'name': name, 'date': date, 'age': hours});
  }
}
