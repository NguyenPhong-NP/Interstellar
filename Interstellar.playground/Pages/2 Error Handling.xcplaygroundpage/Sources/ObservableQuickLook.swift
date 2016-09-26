import Foundation
import Interstellar

extension Observable: CustomPlaygroundQuickLookable, CustomDebugStringConvertible {
    /// A custom playground Quick Look for this instance.
    ///
    /// If this type has value semantics, the `PlaygroundQuickLook` instance
    /// should be unaffected by subsequent mutations.
    public var customPlaygroundQuickLook: PlaygroundQuickLook {
        return .text(self.debugDescription)
    }
    
    public var debugDescription: String {
        if let content = self.value {
            if let content = content as? CustomDebugStringConvertible {
                return "\(content.debugDescription) (Observable)"
            } else {
                return "Observable content not representable in playground"
            }
        }
        return "Empty Observable"
        
    }
}