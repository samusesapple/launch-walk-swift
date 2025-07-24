import ProjectDescription

let project = Project(
  name: "Data",
  targets: [
    .target(
      name: "Data",
      destinations: .iOS,
      product: .framework,
      bundleId: "com.lunchwalk.data",
      infoPlist: .default,
      sources: ["Sources/**"],
      resources: ["Resources/**"]
    ),
    .target(
      name: "DataTests",
      destinations: .iOS,
      product: .unitTests,
      bundleId: "com.lunchwalk.dataTests",
      infoPlist: .default,
      sources: ["Tests/**"],
      dependencies: [
        .target(name: "Data")
      ]
    )
  ]
)
