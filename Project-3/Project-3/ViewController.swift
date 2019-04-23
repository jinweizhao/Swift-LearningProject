//
//  ViewController.swift
//  Project-3
//
//  Created by jinweizhao on 2019/4/19.
//  Copyright © 2019 JWZ. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    //MARK:- 标记
    var Movies = [
        
        Video(image: "videoScreenshot01", source: "emoji zone.mp4"),
        Video(image: "videoScreenshot02", source: "emoji zone.mp4"),
        Video(image: "videoScreenshot03", source: "emoji zone.mp4"),
        Video(image: "videoScreenshot04", source: "emoji zone.mp4"),
        Video(image: "videoScreenshot05", source: "emoji zone.mp4")
    ]
    
    
    let playViewController = AVPlayerViewController()
    
    var player = AVPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib.init(nibName: "VideoCell", bundle: nil), forCellReuseIdentifier: "videocell")
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}



extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "videocell", for: indexPath) as! VideoCell
        
        cell.imgView?.image = UIImage(named: Movies[indexPath.row].image)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Movies.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let path = Bundle.main.path(forResource: "emoji zone", ofType: "mp4")
        
        player = AVPlayer(url: URL(fileURLWithPath: path!))
        
        playViewController.player = player
    
        present(playViewController, animated: true, completion: {
            if self.playViewController.isReadyForDisplay {
                self.player.play()
            }
        })
        
        
        
    }
}


struct Video {
    let image: String
    
    let source: String
}


