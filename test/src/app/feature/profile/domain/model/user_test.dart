import 'package:demo/src/app/feature/profile/domain/model/user.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('User test', () {
    test('() default constructor', () {
      final user = User();

      expect(user.email, equals(null));
      expect(user.firstName, equals(null));
      expect(user.lastName, equals(null));
    });

    test('() default constructor with default value', () {
      final user = User(
        email: 'janejones@gmail.com',
        firstName: 'Jane',
        lastName: 'Jones',
      );

      expect(user.email, equals('janejones@gmail.com'));
      expect(user.firstName, equals('Jane'));
      expect(user.lastName, equals('Jones'));
    });

    test('User toJson', () {
      expect(
        User(email: 'janejones@gmail.com').toJson(),
        <String, dynamic>{
          'email': 'janejones@gmail.com',
          'firstName': null,
          'lastName': null,
        },
      );
    });

    test('User fromJson', () {
      expect(
        User.fromJson(<String, dynamic>{
          'email': 'janejones@gmail.com',
        }),
        User(
          email: 'janejones@gmail.com',
        ),
      );
    });
  });
}
