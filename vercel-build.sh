#!/bin/bash

set -e

FLUTTER_VERSION="3.35.4"

git clone --depth 1 --branch "$FLUTTER_VERSION" https://github.com/flutter/flutter.git "$HOME/flutter"

export PATH="$HOME/flutter/bin:$PATH"

flutter --version
flutter config --enable-web

flutter pub get
flutter build web --release
