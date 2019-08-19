import 'dart:async';
import './validators.dart';

class Bloc with Validators {
  final _email = StreamController<String>();
  final _password = StreamController<String>();
  //add data in email controller stream
  Function(String) get changeEmail => _email.sink.add;
  // retrive data from Email controller Stream
  Function(String) get changePassword => _password.sink.add;
  Stream<String> get email => _email.stream.transform(emailValidation);
  Stream<String> get password => _password.stream.transform(passwordValidation);

  dispose() {
    _email.close();
    _password.close();
  }
}

final bloc = Bloc();
