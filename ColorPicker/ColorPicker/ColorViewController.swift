//
//  ColorViewController.swift
//  ColorPicker
//
//  Created by boborama on 4/26/18.
//  Copyright © 2018 hackerbuddy. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
    
    @IBOutlet weak var colorTextDisplay: UILabel!
    @IBOutlet var uiView: UIView!
    
    var colors = [Color(title: "Red", color: UIColor.red),
                  Color(title: "Orange", color: UIColor.orange),
                  Color(title: "Yellow", color: UIColor.yellow),
                  Color(title: "Green", color: UIColor.green),
                  Color(title: "Blue" , color: UIColor.blue),
                  Color(title: "Purple", color: UIColor.purple),
                  Color(title: "Brown", color: UIColor.brown)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorTextDisplay.text = colors[0].title
        uiView.backgroundColor = colors[0].color
        

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

extension ColorViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].title
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let selectedColor = colors[row]
        colorTextDisplay.text = selectedColor.title
        uiView.backgroundColor = selectedColor.color
        
    }
    
}






