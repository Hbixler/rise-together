//
//  AddHousingViewController.swift
//  Rise Together
//
//  Created by Hailey Bixler on 4/26/21.
//

import UIKit

class AddHousingViewController: UIViewController, UITextFieldDelegate, ImagePickerDelegate {
    
    func didSelect(image: UIImage?) {
        imageView.image = image
    }
    

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var detailsTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    var imagePicker: ImagePicker!
    var delegate: housingData?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imagePicker = ImagePicker(presentationController: self, delegate: self)
        detailsTextField.delegate = self
        addressTextField.delegate = self
    }
    
    @IBAction func changeImage(_ sender: Any) {
        self.imagePicker.present(from: sender as! UIView)
    }
    
    @IBAction func submitHousing(_ sender: Any) {
        if addressTextField.text != "" && detailsTextField.text != "" && imageView.image != nil {
            delegate?.addHouse(address: addressTextField.text!, details: detailsTextField.text!, image: imageView.image!)
            let alert = UIAlertController(title: "", message: "Submitted!", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            addressTextField.text = ""
            detailsTextField.text = ""
            imageView.image = nil
        } else {
            let alert = UIAlertController(title: "", message: "Please fill out all fields", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
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
