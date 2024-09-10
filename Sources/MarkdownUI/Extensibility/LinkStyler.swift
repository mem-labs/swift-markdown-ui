import SwiftUI

public protocol LinkStyler {
    @TextStyleBuilder
    func style(link: String) -> TextStyle
}

public struct DefaultLinkStyler: LinkStyler {
    public func style(link: String) -> TextStyle {
        EmptyTextStyle()
    }

    public init() {}
}
