//
//  ViewController.swift
//  PodcastPlayerDemo
//
//  Created by ebpearls on 12/09/2022.
//

import UIKit
import PodcastPlayer


class ViewController: UIViewController {
    
    var items: [PlayerItem] = [
        PlayerItem(itemURL: URL(string: "https://www.thepodcastexchange.ca/s/AlanCross-Porter-v2.mp3")!, thumbnailURL: .url(URL(string: "http://vocaro.com/trevor/blog/wp-content/uploads/2009/10/Resize-with-interpolation.jpg")!) ,
                   albumName: nil, trackName: nil),
        PlayerItem(itemURL: URL(string: "https://www.thepodcastexchange.ca/s/McDonalds_LNG_061019.wav")!, thumbnailURL: .image(UIImage(named: "thumbnail")!), albumName: nil, trackName: nil),
        PlayerItem(itemURL: URL(string: "https://www.thepodcastexchange.ca/s/Allusionist-HSBC-PRE-2019-07-12.mp3")!, thumbnailURL: nil, albumName: "The Allusionist", trackName: "HSBC"),
        PlayerItem(itemURL: URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!, thumbnailURL: nil, albumName: nil, trackName: nil),
        PlayerItem(itemURL: URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4")!, thumbnailURL: nil, albumName: "Elephant", trackName: "Dreams"),
        PlayerItem(itemURL: URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4")!, thumbnailURL: nil, albumName: nil, trackName: nil),
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    @IBAction func showPodcastPlayer(_ sender: Any) {
        let podcastPlayerVC = PlayerViewController()
        podcastPlayerVC.dataSource = self
        podcastPlayerVC.delegate = self
        navigationController?.pushViewController(podcastPlayerVC, animated: true)
    }
    
}
//MARK: - PlayerViewControllerDataSource
extension ViewController: PlayerViewControllerDataSource {
    func numberOfPlayerItems(in controller: PlayerViewController) -> Int {
        return items.count
    }
    
    func playerViewController(_ controller: PlayerViewController, itemAtIndex index: Int) -> PlayerItem? {
        return items[index]
    }
}
// MARK: - PlayerViewControllerDelegate
extension ViewController: PlayerViewControllerDelegate {
    func playerViewController(_ controller: PlayerViewController, didSkipForwardOnItem item: PlayerItem, atIndex index: Int) {
        
    }
    func playerViewController(_ controller: PlayerViewController, didSkipBackwardOnItem item: PlayerItem, atIndex index: Int) {
        
    }
    func playerViewController(_ controller: PlayerViewController, didStartPlayingItem item: PlayerItem, atIndex index: Int) {
        
    }
    func playerViewController(_ controller: PlayerViewController, didPauseItem item: PlayerItem, atIndex index: Int) {
        
    }
    func playerViewController(_ controller: PlayerViewController, didSkipItemAtIndex index: Int, withReason reason: PlayerViewError) {
        
    }
    
}
