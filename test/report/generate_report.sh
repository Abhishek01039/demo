#!/bin/sh

# Run flutter test
flutter test --coverage

# Exclude generated files
lcov --remove coverage/lcov.info '*.freezed.dart' '*.g.dart' -o coverage/new_lcov.info

# Generate report
genhtml coverage/new_lcov.info --output=coverage 