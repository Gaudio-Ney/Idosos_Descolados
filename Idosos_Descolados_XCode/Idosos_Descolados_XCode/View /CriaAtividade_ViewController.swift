//
//  CriaAtividade_ViewController.swift
//  Idosos_Descolados_XCode
//
//  Created by joana veiga salinas vega on 08/04/20.
//  Copyright © 2020 Gáudio Ney. All rights reserved.
//

import UIKit

class CriaAtividade_ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var createActivity: UILabel!
    
    @IBOutlet weak var nameActivity : UITextField!
    
    @IBOutlet weak var descriptionActivity: UITextField!
    
    @IBOutlet weak var location: UITextField!
    
    @IBOutlet weak var time: UILabel!
    
    //@IBOutlet weak var ultil1hour: UILabel!
    
    //@IBOutlet weak var beetweenhours: UILabel!
    
    //@IBOutlet weak var morethantwo: UILabel!

    @IBOutlet weak var category: UILabel!
    
    @IBOutlet weak var chooseCategory: UIPickerView!
    let sports = ["Dança", "Yoga", "Caminhada", "Alongamento"]
    
    @IBOutlet weak var chooseTime: UIPickerView!
    let timelapse = ["Menos de 1 hora", "Entre 1 e 2 horas", "Mais de 2 horas"]
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
  
    
    // funcition number is for how many rolls - in tis case just one
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return  sports [row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sports.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        category.text = sports [row]
        
    }

    // ajeitar func numberOfComponents(in pickerView: UIPickerView) -> Int {
          //return 1
      
    
      
      // funcition number is for how many rolls - in tis case just one
      
      //func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
          //return  timelapse [row]
      
      
      //func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
          //return timelapse.count
      
      
      //func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
          //time.text = timelapse [row]
          
      
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
