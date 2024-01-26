import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

FirebaseAuth auth = FirebaseAuth.instance;
FirebaseStorage storage = FirebaseStorage.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;


// collection ref
CollectionReference userRef = firestore.collection('user');