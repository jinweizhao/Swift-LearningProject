//
//  InputViewController.swift
//  Project4-ToDoTDD
//
//  Created by jinweizhao on 2019/11/27.
//  Copyright © 2019 JWZ. All rights reserved.
//

import UIKit
import CoreLocation

class InputViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var cancelBtn: UIButton!
    @IBOutlet weak var saveBtn: UIButton!
    
    lazy var geocoder = CLGeocoder()
    
    var itemManager: ToDoItemManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    
    
    
    @IBAction func cancelClick(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func saveClick(_ sender: Any) {
        
        guard let title = titleTextField.text, title.count > 0 else { return  }
        
        let date = datePicker.date
        
        let description = descriptionTextField.text
        
        var placeMark: CLPlacemark?
        var locationName: String?
        
        if locationTextField != nil {
            
            locationName = locationTextField.text
            
            if let locationname = locationName, locationname.count > 0 {
                
                geocoder.geocodeAddressString(locationname) { [weak self](placemarks, _) in
                    
                    placeMark = placemarks?.first
                    
                    let item = ToDoItem(title: title, itemDescription: description, timeStamp: date.timeIntervalSince1970, location: Location(name: locationname, coordinate: placeMark?.location?.coordinate))
                    
                    DispatchQueue.main.async {
                        self?.itemManager?.add(item: item)
                        self?.dismiss(animated: true, completion: nil)
                    }
                }
            }else{
                let item = ToDoItem(title: title, itemDescription: description, timeStamp: date.timeIntervalSince1970, location: nil)
                itemManager?.add(item: item)
                dismiss(animated: true, completion: nil)
            }
            
        }else{
            let item = ToDoItem(
              title: title,
              itemDescription: description,
              timeStamp: date.timeIntervalSince1970)
            
            self.itemManager?.add(item: item)
            dismiss(animated: true)
        }
    }

}


extension InputViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        resignFirstResponder()
        view.endEditing(true)
        return false
    }
}
