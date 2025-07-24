import ProjectDescription

let project = Project(
  name: "Notification",
  targets: [
    .target(
      name: "Notification",
      destinations: .iOS,
      product: .framework,
      bundleId: "com.lunchwalk.notification",
      infoPlist: .default,
      sources: ["Sources/**"],
      resources: ["Resources/**"]
    ),
    .target(
      name: "NotificationTests",
      destinations: .iOS,
      product: .unitTests,
      bundleId: "com.lunchwalk.notificationTests",
      infoPlist: .default,
      sources: ["Tests/**"],
      dependencies: [
        .target(name: "Notification")
      ]
    )
  ]
)