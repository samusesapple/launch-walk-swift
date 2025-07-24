import SwiftUI


public struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()

    public init() {}

    public var body: some View {
        ScrollView {
            VStack(spacing: Spacing.large) {
                LunchTimeAlertCard()
                WalkProgressRing(progress: viewModel.walkProgress)
                FollowButton()
            }
            .padding(.horizontal, Spacing.large)
            .padding(.top, Spacing.xlarge)
        }
        .background(Color.primaryBackground.ignoresSafeArea())
    }
}
