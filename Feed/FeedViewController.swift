//
//  FeedViewController.swift
//  Rise Together
//
//  Created by Hailey Bixler on 4/15/21.
//

import UIKit

class FeedViewController: UIViewController {
    var username: [String] = []
    var caption: [String] = []
    var picture: [UIImage] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        username.append("PamBeasly")
        username.append("JimHalpert")
        username.append("MichaelScott")
        username.append("KevinMalone")
        username.append("KellyKapoore")
        
        caption.append("I've been loving my volunteer postition at Open Door Mission. If anyone is interested in joining me, let me know!")
        caption.append("I just bought my first house! So thankful!")
        caption.append("It's been one year since I planted this tree, look how much it has grown!")
        caption.append("My kiddo just started fifth grade! So glad I got to drop him off on this special day!")
        caption.append("Just got a job at Burger King!")
        
        picture.append(UIImage(named: "post1")!)
        picture.append(UIImage(named: "post2")!)
        picture.append(UIImage(named: "post3")!)
        picture.append(UIImage(named: "post4")!)
        picture.append(UIImage(named: "post5")!)
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
