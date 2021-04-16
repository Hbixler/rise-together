//
//  HousingViewController.swift
//  Rise Together
//
//  Created by Hailey Bixler on 4/15/21.
//

import UIKit

class HousingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var addys: [String] = []
        addys.append("123 Main St")
        addys.append("1301 S Adams Blvd, Apt 9")
        addys.append("8900 SW Randy Ave")
        addys.append("456 Wayne St")
        addys.append("2020 Dreary Ln, Apt 2")
        var deets: [String] = []
        deets.append("Three bedroom/two bathroom house. Looking for a roommate to fill the third room.")
        deets.append("Two bedroom/one bathroom apartment. Looking for a roommate.")
        deets.append("Four bedroom/two bathroom house. Looking for two roommates to fill the extra rooms.")
        deets.append("Two bedroom/two bathroom house. Looking for a roommate to fill the second room.")
        deets.append("Three bedroom/two bathroom apartment. Looking for a roommate to fill the third room.")
        var housePics: [UIImage] = []
        housePics.append(UIImage(contentsOfFile: "house1")!)
        housePics.append(UIImage(contentsOfFile: "apt1")!)
        housePics.append(UIImage(contentsOfFile: "house2")!)
        housePics.append(UIImage(contentsOfFile: "house3")!)
        housePics.append(UIImage(contentsOfFile: "apt2")!)
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
