import ProjectDescription

let project = Project(
  name: "Shared",
  targets: [
    .target(
      name: "Shared",
      destinations: .iOS,
      product: .framework,
      bundleId: "com.lunchwalk.shared",
      infoPlist: .default,
      sources: ["Sources/**"],
      resources: ["Resources/**"]
    ),
    .target(
      name: "SharedTests",
      destinations: .iOS,
      product: .unitTests,
      bundleId: "com.lunchwalk.sharedtests",
      infoPlist: .default,
      sources: ["Tests/**"],
      dependencies: [
        .target(name: "Shared")
      ]
    )
  ]
)