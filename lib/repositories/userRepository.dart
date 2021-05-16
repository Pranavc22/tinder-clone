import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class UserRepository {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  UserRepository({FirebaseAuth auth, FirebaseFirestore firestore})
      : _auth = auth ?? FirebaseAuth.instance,
        _firestore = firestore ?? FirebaseFirestore.instance;
  //Sign in
  Future<void> signInWithEmail(String email, String password) async {
    return await _auth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  //First time user registration
  Future<bool> isFirstTime(String userId) async {
    bool exist;
    await _firestore.collection('users').doc(userId).get().then((user) {
      exist = user.exists;
    });
    return exist;
  }

  //Sign up
  Future<void> signUpWithEmail(String email, String password) async {
    print(_auth);
    return await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  //Sign out
  Future<void> signOut() async {
    return await _auth.signOut();
  }

  //Get currently signed-in users
  Future<bool> isSignedIn() async {
    final currentUser = _auth.currentUser;
    return currentUser != null;
  }

  //Getting userId.
  Future<String> getUser() async {
    return (await _auth.currentUser.uid);
  }

  //Profile Setup
  Future<void> profileSetup(
    File photo,
    String userId,
    String name,
    String gender,
    String interestedIn,
    DateTime age,
    GeoPoint location,
  ) async {
    UploadTask uploadTask = FirebaseStorage.instance
        .ref()
        .child('userPhotos')
        .child(userId)
        .child(userId)
        .putFile(photo);

    return await uploadTask.then((ref) async {
      await ref.ref.getDownloadURL().then((url) async {
        await _firestore.collection('users').doc(userId).set({
          'uid': userId,
          'photoUrl': url,
          'name': name,
          "location": location,
          'gender': gender,
          'interestedIn': interestedIn,
          'age': age
        });
      });
    });
  }
}
