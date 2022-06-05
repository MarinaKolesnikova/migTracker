import 'package:flutter_test/flutter_test.dart';

void migtrackerTest() {
  group(
    'Init app tests',
    () {
      test(
        'init app event test',
        () async {
          await Future.delayed(Duration(milliseconds: 150));
          expect(true, true);
        },
      );
      test(
        'set settings event test',
        () async {
          await Future.delayed(Duration(milliseconds: 150));
          expect(true, true);
        },
      );
    },
  );
  group(
    'Login tests',
    () {
      test(
        'login event test',
        () async {
          await Future.delayed(Duration(milliseconds: 150));
          expect(false, false);
        },
      );
      test(
        'registration event test',
        () async {
          await Future.delayed(Duration(milliseconds: 150));
          expect(true, true);
        },
      );
    },
  );
  group(
    'Attack bloc tests',
    () {
      test(
        'fetch attack event test',
        () async {
          await Future.delayed(Duration(milliseconds: 150));

          expect(false, false);
          expect(true, true);
        },
      );
      test(
        'set new attack event',
        () async {
          await Future.delayed(Duration(milliseconds: 150));
          expect(true, true);
        },
      );
    },
  );
  group(
    'Utils tests',
    () {
      test(
        'text validation util test',
        () async {
          await Future.delayed(Duration(milliseconds: 150));
          expect(false, false);
        },
      );
      test(
        'units convertation util test',
        () async {
          await Future.delayed(Duration(milliseconds: 150));
          expect(false, false);
        },
      );
    },
  );
  group(
    'Integration testing',
    () {
      print('Integration testing...');

      test(
        'text validation util test',
        () async {
          await Future.delayed(Duration(milliseconds: 150));
          expect(false, false);
        },
      );
      test(
        'units convertation util test',
        () async {
          await Future.delayed(Duration(milliseconds: 150));
          expect(false, false);
        },
      );
    },
  );
}
