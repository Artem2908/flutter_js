#if SWIFT_PACKAGE
import Flutter

@objc(FlutterJsPlugin)
public class FlutterJsPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        SwiftFlutterJsPlugin.register(with: registrar)
    }
}
#endif
