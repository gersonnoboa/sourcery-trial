// Generated using Sourcery 1.8.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
import UIKit

// MARK: ViewController Debuggable
extension ViewController {



    func remoteAudioActivated(_ isActivated: Bool) {
        remoteAudioLabel.text = "Remote audio: \(activationLabel(from: isActivated))"
    }

    func remoteVideoActivated(_ isActivated: Bool) {
        remoteVideoLabel.text = "Remote video: \(activationLabel(from: isActivated))"
    }

    func localAudioActivated(_ isActivated: Bool) {
        localAudioLabel.text = "Local audio: \(activationLabel(from: isActivated))"
    }

    func localVideoActivated(_ isActivated: Bool) {
        localVideoLabel.text = "Local video: \(activationLabel(from: isActivated))"
    }

    private func activationLabel(from isActivated: Bool) -> String {
        isActivated ? "active" : "inactive"
    }
}
