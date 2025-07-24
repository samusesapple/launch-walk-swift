import ProjectDescription

let project = Project(
  name: "WatchApp",
  targets: [
    .target(
      name: "WatchApp",
      destinations: .iOS,
      product: .app,
      bundleId: "com.lunchwalk.watchapp",
      infoPlist: .default,
      sources: ["Sources/**"],
      resources: ["Resources/**"]
    ),
    .target(
      name: "WatchAppTests",
      destinations: .iOS,
      product: .unitTests,
      bundleId: "com.lunchwalk.watchapptests",
      infoPlist: .default,
      sources: ["Tests/**"],
      dependencies: [
        .target(name: "WatchApp")
      ]
    )
  ]
)