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
      resources: ["Resources/**"],
      dependencies: [
        .project(target: "Presentation", path: "../Presentation"),
        .project(target: "Domain", path: "../Domain"),
        .project(target: "Data", path: "../Data"),
        .project(target: "Notification", path: "../Notification"),
        .project(target: "Follow", path: "../Follow"),
        .project(target: "WalkRecord", path: "../WalkRecord")
      ]
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