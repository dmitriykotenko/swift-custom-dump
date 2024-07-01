func isIdentityEqual(_ lhs: Any, _ rhs: Any) -> Bool {
  if #available(iOS 13.0, *) {
    guard let lhs = lhs as? any Identifiable else { return false }
    func open<LHS: Identifiable>(_ lhs: LHS) -> Bool {
      guard let rhs = rhs as? LHS else { return false }
      return lhs.id == rhs.id
    }
    return open(lhs)
  } else {
    return false
  }
}
