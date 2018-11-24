//
//  pagehome.swift
//  Question_13600176
//
//  Created by thanut jingjit on 17/11/2561 BE.
//  Copyright © 2561 thanut jingjit. All rights reserved.
//

import AVFoundation
import Foundation
class pagehome : UIViewController {
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var randomSong: UILabel!
    @IBOutlet weak var randomBt: UIButton!
    
    let actionSound = ["Big_Explosion_Cut_Off"]
    var audioplayer : AVAudioPlayer!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
        playButton.layer.cornerRadius = self.playButton.frame.size.height / 2
        
        randomBt.layer.cornerRadius = self.randomBt.frame.size.height / 2
  
}
    @IBAction func randomButton(_ sender: Any) {
        
        let array = ["ความบังเอิญ", "เกษมสำราญ", "9 (ก้าว)", "ความเลือนลาง","คำตอบ","เงาของฝน","ช่อมะกอก","ทิศทาง",
                     "ประโยคบอกเล่า","ปะติดปะต่อ","ป่าสนในห้องหมายเลข 1","ฝืน","ภายใต้ท้องฟ้าสีดำ"]
        let randomIndex = Int(arc4random_uniform(UInt32(array.count)))
        randomSong.text = array[randomIndex]
        print(array[randomIndex])
        
        
       
    }
    
    @IBAction func nextPage(_ sender: Any) {
        
        playSound("Big_Explosion_Cut_Off")
        
    }
    
    
    func playSound(_ playThis : String){
        let soundURL = Bundle.main.url(forResource: playThis, withExtension: "mp3")
        audioplayer = try! AVAudioPlayer(contentsOf: soundURL!)
        audioplayer.play()
    }

}
