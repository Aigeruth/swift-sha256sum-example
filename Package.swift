// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-sha256sum",
    products: [
	.executable(name: "sha256sum", targets: ["sha256sum"])
    ],
    targets: [
        .systemLibrary(
            name: "Copenssl",
            pkgConfig: "openssl",
            providers: [
                .brew(["openssl"])
            ]
        ),
        .target(name: "sha256sum", dependencies: ["Copenssl"])
    ]
)
