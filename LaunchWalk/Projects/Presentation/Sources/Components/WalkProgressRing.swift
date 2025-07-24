import SwiftUI

public struct WalkProgressRing: View {
    public var progress: Double

    public init(progress: Double) {
        self.progress = progress
    }

    public var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 12)
                .opacity(0.3)
                .foregroundColor(.gray)

            Circle()
                .trim(from: 0.0, to: CGFloat(progress))
                .stroke(style: StrokeStyle(lineWidth: 12, lineCap: .round))
                .foregroundColor(.accent)
                .rotationEffect(.degrees(-90))

            Text("\(Int(progress * 100))%")
                .font(.headline)
        }
        .frame(width: 120, height: 120)
    }
}
