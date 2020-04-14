//
//  CriarAtividade_ViewController.swift
//  Idosos_Descolados_XCode
//
//  Created by joana veiga salinas vega on 10/04/20.
//  Copyright © 2020 Gáudio Ney. All rights reserved.
//

import UIKit

class CriarAtividade_ViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    var currentTextField = UITextField()
    var pickerView = UIPickerView()
    
    var Eventstype:[String] = []
    var Durations:[String] = []
    
    @IBOutlet weak var eventtextfield: UITextField!
    @IBOutlet weak var durationstextfield: UITextField!
    @IBOutlet weak var duration: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Eventstype = ["Caminhada", "Yoga", "Dança", "Alongamento"]
        Durations = ["Menos de 1 hora", "Entre 1 e 2 horas", "Entre 2 e 3 horas", "Mais de 3 horas"]
  
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if currentTextField == eventtextfield {
            return Eventstype.count
        } else if currentTextField == durationstextfield {
            return Durations.count
        } else {
            return 0
        }
    }
   
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int , forComponent componentt: Int) -> String? {
        if currentTextField == eventtextfield {
            return Eventstype [row]
        } else if currentTextField == durationstextfield {
            return Durations [row]
        } else {
            return ""
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if currentTextField == eventtextfield {
            eventtextfield.text = Eventstype [row]
            self.view.endEditing(true)
        } else if currentTextField == durationstextfield {
            durationstextfield.text = Durations [row]
            self.view.endEditing(true)
            
        }
    }
    
    func textFieldDidBeginEditing (_ textField: UITextField){
        self.pickerView.delegate = self
        self.pickerView.dataSource =  self
        currentTextField = textField
        if currentTextField == eventtextfield {
            currentTextField.inputView = pickerView
        } else if currentTextField == durationstextfield {
            currentTextField.inputView = pickerView
        }
    }
    
    
}
