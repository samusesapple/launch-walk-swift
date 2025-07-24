import SwiftUI

public struct AppFont {
    public static func heading(_ size: CGFloat) -> Font {
        .system(size: size, weight: .bold)
    }

    public static func body(_ size: CGFloat) -> Font {
        .system(size: size, weight: .regular)
    }

    public static func caption(_ size: CGFloat) -> Font {
        .system(size: size, weight: .light)
    }
}
