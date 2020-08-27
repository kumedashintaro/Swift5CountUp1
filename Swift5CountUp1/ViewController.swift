//
//  ViewController.swift
//  Swift5CountUp1
//
//  Created by 久米田晋太郎 on 2020/08/26.
//  Copyright © 2020 Shintaro Kumeda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var countUpLabel: UILabel!
    
    var count = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        countUpLabel.text = "0"
        
    }

    @IBAction func plus(_ sender: Any) {
        
        count = count + 1
        
        countUpLabel.text = String(count)
        
        if count >= 10{
            
            changeTextColoer()
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        
        count = count - 1
        countUpLabel.text = String(count)
        
        if count <= 0{
            resetColoer()
        }
        
        
    }
    
    func changeTextColoer(){
        countUpLabel.textColor = .yellow
    }
    
    func resetColoer(){
        
        countUpLabel.textColor = .white
    }
    
}

