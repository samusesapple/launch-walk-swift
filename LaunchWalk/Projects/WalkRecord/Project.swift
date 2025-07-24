import ProjectDescription

let project = Project(
  name: "WalkRecord",
  targets: [
    .target(
      name: "WalkRecord",
      destinations: .iOS,
      product: .framework,
      bundleId: "com.lunchwalk.walkrecord",
      infoPlist: .default,
      sources: ["Sources/**"],
      resources: ["Resources/**"]
    ),
    .target(
      name: "WalkRecordTests",
      destinations: .iOS,
      product: .unitTests,
      bundleId: "com.lunchwalk.walkrecordTests",
      infoPlist: .default,
      sources: ["Tests/**"],
      dependencies: [
        .target(name: "WalkRecord")
      ]
    )
  ]
)
