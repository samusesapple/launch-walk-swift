import ProjectDescription

let project = Project(
  name: "Presentation",
  targets: [
    .target(
      name: "Presentation",
      destinations: .iOS,
      product: .framework,
      bundleId: "com.lunchwalk.presentation",
      infoPlist: .default,
      sources: ["Sources/**"],
      resources: ["Resources/**"]
    ),
    .target(
      name: "PresentationTests",
      destinations: .iOS,
      product: .unitTests,
      bundleId: "com.lunchwalk.presentationTests",
      infoPlist: .default,
      sources: ["Tests/**"],
      dependencies: [
        .target(name: "Presentation")
      ]
    )
  ]
)
