import 'dart:async';

class Validators {
  final emailValidation =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (email.contains('@')) {
      sink.add(email);
    } else {
      sink.addError("Email dostent seems like email");
    }
  });

  final passwordValidation = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.length > 3) {
      sink.add(password);
    } else {
      sink.addError("Password should be greater that 3 character");
    }
  });
}
