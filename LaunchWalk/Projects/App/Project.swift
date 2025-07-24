import ProjectDescription

let project = Project(
  name: "App",
  targets: [
    .target(
      name: "App",
      destinations: .iOS,
      product: .app,
      bundleId: "com.lunchwalk.app",
      infoPlist: .default,
      sources: ["Sources/**"],
      resources: ["Resources/**"]
    ),
    .target(
      name: "AppTests",
      destinations: .iOS,
      product: .unitTests,
      bundleId: "com.lunchwalk.apptests",
      infoPlist: .default,
      sources: ["Tests/**"],
      dependencies: [
        .target(name: "App")
      ]
    )
  ]
)