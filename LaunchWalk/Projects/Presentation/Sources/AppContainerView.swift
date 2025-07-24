import SwiftUI

public struct AppContainerView: View {
    public init() {}

    public var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("홈", systemImage: "house.fill")
                }

            WalkRecordView()
                .tabItem {
                    Label("산책기록", systemImage: "figure.walk")
                }
        }
    }
}