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
    let url : String
    var like : Bool
}

struct singerInfo {
    let singerName :String
    var songList : Array<songInfo>
}

var playList = [
    singerInfo(
        singerName: "Moonbyul",
        songList: [
            songInfo(singerName: "Moonbyul", songTitle: "LUNATIC", imageName: "lunatic", url: "https://www.youtube.com/watch?v=l-fZh5Maq0k", like: false),
            songInfo(singerName: "Moonbyul, Seori", songTitle: "Shutdown (Feat. Seori)", imageName: "shutdown", url: "https://www.youtube.com/watch?v=Nqz4oh2jogE", like: false),
            songInfo(singerName: "Moonbyul", songTitle: "Eclipse", imageName: "eclipse", url: "https://www.youtube.com/watch?v=oCTqcTe1lIA", like: false),
            songInfo(singerName: "Moonbyul, Seulgi", songTitle: "Selfish (Feat. Seulgi Of Red Velvet", imageName: "selfish", url: "https://www.youtube.com/watch?v=diwrEUG6gBg", like: false),
            songInfo(singerName: "Solar, Moonbyul", songTitle: "Promise U", imageName: "promiseU", url: "https://www.youtube.com/watch?v=APaV5_Pc4M8", like: false)
        ]),
    singerInfo(
        singerName: "Hwasa",
        songList: [
            songInfo(singerName: "Hwasa", songTitle: "Maria", imageName: "maria", url: "https://www.youtube.com/watch?v=brZRDjFIFJs", like: false),
            songInfo(singerName: "Hwasa", songTitle: "I'm a B", imageName: "imAB", url: "https://www.youtube.com/watch?v=s1kwS3riCQI", like: false),
            songInfo(singerName: "Hwasa", songTitle: "TWIT", imageName: "twit", url: "https://www.youtube.com/watch?v=ScSn235gQx0", like: false)
        ]),
    singerInfo(
        singerName: "Wheein",
        songList: [
            songInfo(singerName: "Wheein", songTitle: "Make Me Happy", imageName: "makeMeHappy", url: "https://www.youtube.com/watch?v=8nVyoH0ppmI&t=31s", like: false),
            songInfo(singerName: "Wheein, Sik-K", songTitle: "EASY (Feat.Sik-K)", imageName: "easy", url: "https://www.youtube.com/watch?v=U_tQ-GIC0O8", like: false),
            songInfo(singerName: "Wheein", songTitle: "Water Color", imageName: "waterColor", url: "https://www.youtube.com/watch?v=ShFKF2YN7H0", like: false)
        ]),
    singerInfo(
        singerName: "Solar",
        songList: [
            songInfo(singerName: "Solar", songTitle: "Spit it out", imageName: "spitItOut", url: "https://www.youtube.com/watch?v=V8FXWf0s7K0", like: false),
            songInfo(singerName: "Solar", songTitle: "Ddun Ddun Ddun", imageName: "Ddun", url: "https://www.youtube.com/watch?v=EtDtptp1eu0", like: false),
            songInfo(singerName: "Solar, Moonbyul", songTitle: "Promise U", imageName: "promiseU", url: "https://www.youtube.com/watch?v=APaV5_Pc4M8", like: false)
        ])
]


