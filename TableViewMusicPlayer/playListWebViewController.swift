//
//  playListWebViewController.swift
//  TableViewMusicPlayer
//
//  Created by 蕭鈺蒖 on 2022/1/17.
//

import UIKit
import WebKit

class playListWebViewController: UIViewController {
    
    
    @IBOutlet weak var youtubeWebView: WKWebView!
    
    let song : songInfo
    
    init?(coder: NSCoder, song: songInfo){
        self.song = song
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let request = URLRequest(url: URL(string: song.url)!)
        youtubeWebView.load(request)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
