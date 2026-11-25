// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "flutter_js",
    platforms: [.iOS("13.0")],
    products: [
        .library(name: "flutter-js", targets: ["flutter_js"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "flutter_js",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            linkerSettings: [.linkedFramework("JavaScriptCore")]
        )
    ]
)
