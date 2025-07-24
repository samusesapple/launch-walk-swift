import ProjectDescription

let project = Project(
  name: "Domain",
  targets: [
    .target(
      name: "Domain",
      destinations: .iOS,
      product: .framework,
      bundleId: "com.lunchwalk.domain",
      infoPlist: .default,
      sources: ["Sources/**"],
      resources: ["Resources/**"]
    ),
    .target(
      name: "DomainTests",
      destinations: .iOS,
      product: .unitTests,
      bundleId: "com.lunchwalk.domainTests",
      infoPlist: .default,
      sources: ["Tests/**"],
      dependencies: [
        .target(name: "Domain")
      ]
    )
  ]
)
