import ProjectDescription

let project = Project(
    name: "LaunchWalk",
    targets: [
        .target(
            name: "LaunchWalk",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.LaunchWalk",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["LaunchWalk/Sources/**"],
            resources: ["LaunchWalk/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "LaunchWalkTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.LaunchWalkTests",
            infoPlist: .default,
            sources: ["LaunchWalk/Tests/**"],
            resources: [],
            dependencies: [.target(name: "LaunchWalk")]
        ),
    ]
)
