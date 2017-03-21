//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by MAHHA on 16/03/2017.
//  Copyright © 2017 MAHHA. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    private var _selectedTrack:String!
    
    var selectedTrack : String {
        
    get {
       return _selectedTrack
    }
    set {
      _selectedTrack = newValue
        
        }
    

    }
    @IBOutlet weak var musicTitleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        musicTitleLabel.text = _selectedTrack

    }

   
    @IBAction func backPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }

}
