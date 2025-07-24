import SwiftUI

public struct FollowButton: View {
    @State private var isFollowing: Bool = false

    public init() {}

    public var body: some View {
        Button(action: {
            isFollowing.toggle()
        }) {
            Text(isFollowing ? "팔로잉" : "팔로우")
                .font(.subheadline)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background(isFollowing ? Color.gray : Color.accentColor)
                .foregroundColor(.white)
                .cornerRadius(20)
        }
    }
}
