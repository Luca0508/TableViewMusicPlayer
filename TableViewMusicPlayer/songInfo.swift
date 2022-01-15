//
//  songInfo.swift
//  TableViewMusicPlayer
//
//  Created by 蕭鈺蒖 on 2022/1/15.
//

import Foundation
import UIKit

struct songInfo{
    let singerName :String
    let songTitle: String
    let imageName : String
}

let playList = [
    songInfo(singerName: "Hwasa", songTitle: "TWIT", imageName: "twit"),
    songInfo(singerName: "Moonbyul. Seori", songTitle: "Shutdown (Feat.Seori)", imageName: "shutdown"),
    songInfo(singerName: "Wheein, Sik-K", songTitle: "EASY (Feat.Sik-K)", imageName: "easy"),
    songInfo(singerName: "Solar, Moonbyul", songTitle: "Promise U", imageName: "promiseU"),
    songInfo(singerName: "MAMAMOO", songTitle: "HIP", imageName: "hip"),
    songInfo(singerName: "MAMAMOO", songTitle: "gogobebe", imageName: "gogobebe"),
    songInfo(singerName: "Moonbyul", songTitle: "Eclipse", imageName: "eclipse"),
    songInfo(singerName: "Hwasa", songTitle: "Maria", imageName: "maria"),
    songInfo(singerName: "Hwasa", songTitle: "I'm a B", imageName: "imAB"),
    songInfo(singerName: "Wheein", songTitle: "Water Color", imageName: "waterColor"),
    songInfo(singerName: "Solar", songTitle: "Spit it out", imageName: "spitItOut")
]


struct propertyKey {
    static let songCell = "songCell"
}
