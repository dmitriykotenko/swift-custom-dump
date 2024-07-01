import SwiftCollectionDifference


extension SwiftCollectionDifference.Change {
  var offset: Int {
    switch self {
    case let .insert(offset, _, _), let .remove(offset, _, _):
      return offset
    }
  }
}
