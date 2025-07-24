import Foundation
import Combine

public final class WalkRecordViewModel: ObservableObject {
    // MARK: - Published State
    @Published public var isInitialized: Bool = false

    private var cancellables = Set<AnyCancellable>()

    // MARK: - Init
    public init() {
        loadInitialData()
    }

    // MARK: - Actions
    public func loadInitialData() {
        // TODO: 초기 데이터 로딩 로직 작성
        isInitialized = true
    }
}
