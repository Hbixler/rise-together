//
//  AddJobViewController.swift
//  Rise Together
//
//  Created by Hailey Bixler on 4/26/21.
//

import UIKit

class AddJobViewController: UIViewController, ImagePickerDelegate, UITextFieldDelegate {
    
    
    func didSelect(image: UIImage?) {
        imageView.image = image
    }

    @IBOutlet weak var companyTextField: UITextField!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    var delegate: jobData?
    var imagePicker: ImagePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imagePicker = ImagePicker(presentationController: self, delegate: self)
        // Do any additional setup after loading the view.
    }
    @IBAction func changeImage(_ sender: Any) {
        self.imagePicker.present(from: sender as! UIView)
    }
    @IBAction func addJob(_ sender: Any) {
        if companyTextField.text != "" && titleTextField.text != "" && imageView.image != nil {
            delegate?.addJob(title: titleTextField.text!, details: companyTextField.text!, image: imageView.image!)
            let alert = UIAlertController(title: "", message: "Submitted!", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            companyTextField.text = ""
            titleTextField.text = ""
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
