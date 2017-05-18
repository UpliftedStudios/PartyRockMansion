//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Raphael M. Hidalgo on 5/11/17.
//  Copyright © 2017 UpliftedStudios. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Where The Sun Goes Down")
        
        let p2 = PartyRock(imageURL: "https://i.ytimg.com/vi/tWyuglGCKgE/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=67&sigh=y0R8L3o0PvGFJokJBD3AvwpTfgU", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tWyuglGCKgE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Juicy Wiggle")
        
        let p3 = PartyRock(imageURL: "https://www.youtube.com/watch?v=1w9DiGlZksU", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1w9DiGlZksU\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Let's Get Ridiculous")
        
        let p4 = PartyRock(imageURL: "https://i.ytimg.com/vi/gOEmIq_0cpY/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=67&sigh=ZzthwDLAeRb0wsfUUSI3MT7TntY", videoURL: "<iframe width=\"492\" height=\"277\" src=\"https://www.youtube.com/embed/gOEmIq_0cpY\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Brand New Day")
        
        let p5 = PartyRock(imageURL: "https://i.ytimg.com/vi/Md-8YlE-KhA/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=67&sigh=CCJ82ydTWP1n13h48d2V1thWAXY", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Md-8YlE-KhA\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Booty Man")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        
        tableView.delegate = self
        tableView.dataSource = self

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
            
        } else {
            return UITableViewCell()
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
}
