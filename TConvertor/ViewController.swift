//
//  ViewController.swift
//  TConvertor
//
//  Created by Ruslan Bihun on 10.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var celciuseLabel: UILabel!
    @IBOutlet var fahrenheitLabel: UILabel!
    
    @IBOutlet var sliderSetup: UISlider!{
        didSet {
            sliderSetup.maximumValue = 100
            sliderSetup.minimumValue = -100
            sliderSetup.value = 0
            sliderSetup.maximumTrackTintColor = .red
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        convert()
    }

    @IBAction func sliderAction(_ sender: UISlider) {
        convert()
    }
    
    func convert() {
        let celceus = Int(round(sliderSetup.value))
        celciuseLabel.text = "\(celceus)ºC"
        
        let fahrenheit = Int(round(sliderSetup.value * (9 / 5) + 32))
        fahrenheitLabel.text = "\(fahrenheit)ºF "
    }
    
}

