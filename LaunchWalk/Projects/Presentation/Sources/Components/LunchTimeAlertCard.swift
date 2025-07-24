import SwiftUI

public struct LunchTimeAlertCard: View {
    public init() {}

    public var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("점심시간 알림")
                .font(.title3)
                .bold()
            Text("산책할 시간이에요! 가까운 공원을 찾아보세요.")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.primary.opacity(0.05))
        .cornerRadius(12)
        .shadow(radius: 1)
    }
}
