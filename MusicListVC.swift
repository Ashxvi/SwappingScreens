//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by MAHHA on 16/03/2017.
//  Copyright © 2017 MAHHA. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func quitPressed(_ sender: Any) {
        
        dismiss(animated : true, completion: nil)

    }

    @IBAction func playPressed(_ sender: Any) {
        
        let title = "Niykee Heaton - Bad Intentions ft. Migos "
        performSegue(withIdentifier: "PlaySongVC", sender: title)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination   as? PlaySongVC {
        
            if let song = sender as? String {
                destination.selectedTrack = song
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
