import Foundation
import UIKit

protocol DebuggableV3 {
    func remoteAudioActivated(_ isActivated: Bool)
    func remoteVideoActivated(_ isActivated: Bool)
    func localAudioActivated(_ isActivated: Bool)
    func localVideoActivated(_ isActivated: Bool)

    var stackView: UIStackView! { get }
}

extension DebuggableV3 {
    func remoteAudioActivated(_ isActivated: Bool) {}
    func remoteVideoActivated(_ isActivated: Bool) {}
    func localAudioActivated(_ isActivated: Bool) {}
    func localVideoActivated(_ isActivated: Bool) {}
}
