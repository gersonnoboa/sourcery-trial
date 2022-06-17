//
//  ViewController.swift
//  SwiftVisualTest
//
//  Created by Gerson Noboa on 16.06.2022.
//

import UIKit

class ViewController: UIViewController, DebuggableV3 {
    @IBOutlet weak var stackView: UIStackView!

    var remoteAudioStatus = false
    var remoteVideoStatus = false
    var localAudioStatus = false
    var localVideoStatus = false

    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        // sourcery:inline:ViewController.AddDebugLabels
            addLabelsToStackView()
        // sourcery:end
    }

    @IBAction @objc func toggleRemoteVideo() {
        remoteVideoStatus = !remoteVideoStatus
        print("Remote video toggled to \(remoteVideoStatus)")

        remoteVideoActivated(remoteVideoStatus)
    }

    @IBAction @objc func toggleRemoteAudio() {
        remoteAudioStatus = !remoteAudioStatus
        print("Remote audio toggled to \(remoteAudioStatus)")

        remoteAudioActivated(remoteAudioStatus)
    }

    @IBAction @objc func toggleLocalVideo() {
        localVideoStatus = !localVideoStatus
        print("Local video toggled to \(localVideoStatus)")

        localVideoActivated(localVideoStatus)
    }

    @IBAction @objc func toggleLocalAudio() {
        localAudioStatus = !localAudioStatus
        print("Local audio toggled to \(localAudioStatus)")
        
        localAudioActivated(localAudioStatus)
    }

// sourcery:inline:auto:ViewController.DebugLabels
    var remoteAudioLabel = UILabel()
    var remoteVideoLabel = UILabel()
    var localAudioLabel = UILabel()
    var localVideoLabel = UILabel()
    func addLabelsToStackView() {
        stackView.addArrangedSubview(remoteVideoLabel)
        stackView.addArrangedSubview(remoteAudioLabel)
        stackView.addArrangedSubview(localVideoLabel)
        stackView.addArrangedSubview(localAudioLabel)
    }
// sourcery:end
}
