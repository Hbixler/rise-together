//
//  HousingViewController.swift
//  Rise Together
//
//  Created by Hailey Bixler on 4/15/21.
//

import UIKit

class HousingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UIImagePickerControllerDelegate & UINavigationControllerDelegate, housingData, showDetails {
    
    var addys: [String] = []
    var deets: [String] = []
    var housePics: [UIImage] = []
    var currentIndex: Int?
    
    func addHouse(address: String, details: String, image: UIImage) {
        deets.append(details)
        addys.append(address)
        housePics.append(image)
        tableView.reloadData()
    }
    
    func showDetails(index: Int) {
        currentIndex = index
        //perform segue
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return addys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "housingCell") as! HousingTableViewCell
        cell.passIndex(newAddy: addys[indexPath.row], newImg: housePics[indexPath.row], index: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 194
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "HousingTableViewCell", bundle: nil), forCellReuseIdentifier: "housingCell")
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        pickerController.allowsEditing = true
        pickerController.mediaTypes = ["public.image", "public.movie"]
        pickerController.sourceType = .photoLibrary
        addys.append("123 Main St")
        addys.append("1301 S Adams Blvd, Apt 9")
        addys.append("8900 SW Randy Ave")
        addys.append("456 Wayne St")
        addys.append("2020 Dreary Ln, Apt 2")
        
        deets.append("Three bedroom/two bathroom house. Looking for a roommate to fill the third room. $500 per month. Call (402)568-7832 if interested.")
        deets.append("Two bedroom/one bathroom apartment. Looking for a roommate. $450 per month. Call (402)568-7832 if interested.")
        deets.append("Four bedroom/two bathroom house. Looking for two roommates to fill the extra rooms. $550 per month. Call (402)673-2464 if interested.")
        deets.append("Two bedroom/two bathroom house. Looking for a roommate to fill the second room. $600 per month. Call (402)758-6732 if interested.")
        deets.append("Three bedroom/two bathroom apartment. Looking for a roommate to fill the third room. $500 per month. Call (402)754-8679 if interested.")
        
        housePics.append(UIImage(named: "house1")!)
        housePics.append(UIImage(named: "apt1")!)
        housePics.append(UIImage(named: "house2")!)
        housePics.append(UIImage(named: "house3")!)
        housePics.append(UIImage(named: "apt2")!)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addHousing" {
            let newVC = segue.destination as! AddHousingViewController
            newVC.delegate = self
        }
        else if segue.identifier == "houseDSegue" {
            //change variables
        }
    }

}

protocol housingData {
    func addHouse(address: String, details: String, image: UIImage)
}
