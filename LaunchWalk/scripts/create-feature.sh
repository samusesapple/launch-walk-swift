#!/bin/bash

read -p "생성할 Feature 이름을 입력하세요 (예: Home, WalkRecord): " FEATURE_NAME

if [ -z "$FEATURE_NAME" ]; then
  echo "❌ Feature 이름을 입력해야 합니다."
  exit 1
fi

FEATURE_DIR="Projects/Presentation/Sources/Feature/$FEATURE_NAME"
VIEWMODEL_FILE="$FEATURE_DIR/${FEATURE_NAME}ViewModel.swift"
VIEW_FILE="$FEATURE_DIR/${FEATURE_NAME}View.swift"

# 디렉토리 생성
mkdir -p "$FEATURE_DIR"

# ViewModel 생성
if [ ! -f "$VIEWMODEL_FILE" ]; then
  cat > "$VIEWMODEL_FILE" <<EOF
import Foundation
import Combine

public final class ${FEATURE_NAME}ViewModel: ObservableObject {
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
EOF
  echo "✅ ViewModel 생성됨: $VIEWMODEL_FILE"
else
  echo "⚠️  ViewModel 이미 존재: $VIEWMODEL_FILE"
fi

# View 기본 파일도 함께 생성
if [ ! -f "$VIEW_FILE" ]; then
  cat > "$VIEW_FILE" <<EOF
import SwiftUI

public struct ${FEATURE_NAME}View: View {
    @StateObject private var viewModel = ${FEATURE_NAME}ViewModel()

    public init() {}

    public var body: some View {
        VStack {
            Text("${FEATURE_NAME} 화면")
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
EOF
  echo "✅ View 생성됨: $VIEW_FILE"
else
  echo "⚠️  View 이미 존재: $VIEW_FILE"
fi