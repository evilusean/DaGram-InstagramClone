import 'package:dagram_flutter/resources/auth_methods.dart';
import 'package:flutter/material.dart';
import 'package:dagram_flutter/models/user.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  final AuthMethods _authMethods = AuthMethods();
  
  User get getUser => _user!;

  Future<void> refreshUser() async {
    User user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}

    // String username = "";
    
    // @override
    // void initState() {
    //   super.initState();
    //   getUsername();
    // }

    // void getUsername() async {
    //   DocumentSnapshot snap = await FirebaseFirestore.instance
    //     .collection('users')
    //     .doc(FirebaseAuth.instance.currentUser!.uid)
    //     .get();

    // setState(() {
    //   username=(snap.data() as Map<String, dynamic>)['username'];
    // });
    // }