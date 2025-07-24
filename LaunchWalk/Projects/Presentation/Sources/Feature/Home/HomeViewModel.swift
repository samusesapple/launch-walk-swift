import Foundation
import Combine

public final class HomeViewModel: ObservableObject {
    // MARK: - Published State
    @Published public var isLunchTime: Bool = false
    @Published public var walkProgress: Double = 0.0
    @Published public var isFollowing: Bool = false

    private var cancellables = Set<AnyCancellable>()

    // MARK: - Init
    public init() {
        loadInitialData()
    }

    // MARK: - Actions
    public func toggleFollow() {
        isFollowing.toggle()
    }

    public func loadInitialData() {
        // 나중에 UseCase를 통해 로직 대체
        isLunchTime = checkIfLunchTime()
        walkProgress = 0.65
    }

    // MARK: - Private Logic
    private func checkIfLunchTime() -> Bool {
        let hour = Calendar.current.component(.hour, from: Date())
        return (11...14).contains(hour)
    }
}