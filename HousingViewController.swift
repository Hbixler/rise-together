//
//  HousingViewController.swift
//  Rise Together
//
//  Created by Hailey Bixler on 4/15/21.
//

import UIKit

class HousingViewController: UIViewController, UITableViewDataSource {
    var addys: [String] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        addys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "housingCell")
        return cell!
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self

        // Do any additional setup after loading the view.
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
        housePics.append(UIImage(named: "house1")!)
        housePics.append(UIImage(named: "apt1")!)
        housePics.append(UIImage(named: "house2")!)
        housePics.append(UIImage(named: "house3")!)
        housePics.append(UIImage(named: "apt2")!)
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
