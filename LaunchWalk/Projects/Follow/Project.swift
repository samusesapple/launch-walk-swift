import ProjectDescription

let project = Project(
  name: "Follow",
  targets: [
    .target(
      name: "Follow",
      destinations: .iOS,
      product: .framework,
      bundleId: "com.lunchwalk.follow",
      infoPlist: .default,
      sources: ["Sources/**"],
      resources: ["Resources/**"]
    ),
    .target(
      name: "FollowTests",
      destinations: .iOS,
      product: .unitTests,
      bundleId: "com.lunchwalk.followTests",
      infoPlist: .default,
      sources: ["Tests/**"],
      dependencies: [
        .target(name: "Follow")
      ]
    )
  ]
)
