import SwiftUI

extension View {
  public func markdownLinkStyler<L: LinkStyler>(_ linkStyler: L) -> some View {
    self.environment(\.linkStyler, linkStyler)
  }
}

extension EnvironmentValues {
  var linkStyler: LinkStyler {
    get { self[LinkStylerKey.self] }
    set { self[LinkStylerKey.self] = newValue }
  }
}

private struct LinkStylerKey: EnvironmentKey {
  static let defaultValue: LinkStyler = DefaultLinkStyler()
}
