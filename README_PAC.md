# PA Connect fork of `flutter_aws_chime`

## Why

Stock `flutter_aws_chime` 1.1.0 depends on CocoaPod `AmazonChimeSDK-Bitcode`, which
Apple App Store Connect rejects (`Invalid Executable … contains bitcode`).

## What changed

- **iOS**: no Chime SDK pods; stub `FlutterAwsChimePlugin` only.
- **Android**: unchanged (full Chime / live classes).

## FlutterFlow

In **Custom Pub Dependencies**, point `flutter_aws_chime` at this repo/path, or
upload this folder to Git and use:

```yaml
flutter_aws_chime:
  git:
    url: https://github.com/ericsmallw/flutter_aws_chime_no_bitcode.git
    ref: main
```

## App behavior

Dart code in `fod_live_support.dart` hides live classes on iOS and uses
`MeetingView` only on Android.
