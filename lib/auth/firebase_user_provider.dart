import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Firstproject1FirebaseUser {
  Firstproject1FirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

Firstproject1FirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Firstproject1FirebaseUser> firstproject1FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<Firstproject1FirebaseUser>(
            (user) => currentUser = Firstproject1FirebaseUser(user));
