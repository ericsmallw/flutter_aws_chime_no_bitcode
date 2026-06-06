import Flutter
import UIKit

/// iOS stub — FOD live video runs on Android. Avoids linking `AmazonChimeSDK-Bitcode`.
public class FlutterAwsChimePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    // No method channel or platform views on iOS.
  }
}
