#!/bin/bash
DIR=$( dirname -- "$0"; )

set -x
(
  flutter drive \
    --driver=$DIR/integration_test/test_driver.dart \
    --target=$DIR/integration_test/gherkin_suite_test.dart
) || {
  exit_code=0
}
node generate-cucumber-html-report.js
open $DIR/integration_test/gherkin/reports/cucumber_report.html
exit $exit_code