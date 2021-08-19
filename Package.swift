// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "STDiscreteSlider",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "STDiscreteSlider",
            targets: ["STDiscreteSlider"]
        )
    ],
    targets: [
        .target(name: "STDiscreteSlider")
    ]
)
