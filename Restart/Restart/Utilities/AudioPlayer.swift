//
//  AudioPlayer.swift
//  Restart
//
//  Created by Carlos Paredes on 24/10/23.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
  if let path = Bundle.main.path(forResource: sound, ofType: type) {
    do {
      audioPlayer = try AVAudioPlayer(contentsOf: URL(filePath: path))
      audioPlayer?.play()
    } catch {
      print("Could not play the sound file.")
    }
  }
}
