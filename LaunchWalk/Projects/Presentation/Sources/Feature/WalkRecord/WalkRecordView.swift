import SwiftUI

public struct WalkRecordView: View {
    @StateObject private var viewModel = WalkRecordViewModel()

    public init() {}

    public var body: some View {
        VStack {
            Text("WalkRecord 화면")
                .font(.title)
            if viewModel.isInitialized {
                Text("✅ 초기화 완료")
            }
        }
        .onAppear {
            viewModel.loadInitialData()
        }
    }
}
