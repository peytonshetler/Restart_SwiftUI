//
//  AudioPlayer.swift
//  Restart_SwiftUI
//
//  Created by Peyton Shetler on 4/26/22.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(fileName: String, fileType: String) {
    if let path = Bundle.main.path(forResource: fileName, ofType: fileType) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Cound not play the sound file")
        }
    }
}
