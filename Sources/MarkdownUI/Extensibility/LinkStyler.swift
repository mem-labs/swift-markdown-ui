import SwiftUI

public protocol LinkStyler {
    func style(link: String) -> TextStyle
}

public struct DefaultLinkStyler: LinkStyler {
    public func style(link: String) -> TextStyle {
        EmptyTextStyle()
    }

    public init() {}
}
