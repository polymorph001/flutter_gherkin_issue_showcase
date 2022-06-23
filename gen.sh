#!/bin/bash
set -x
# Remove build cache
flutter packages pub run build_runner clean

# Generate Integration Tests from Feature files
flutter packages pub run build_runner build --delete-conflicting-outputs