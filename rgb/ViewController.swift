//
//  ViewController.swift
//  rgb
//
//  Created by Юлия Иванова on 23.08.2020.
//  Copyright © 2020 Юлия Иванова. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewColor: UIView!
    
    @IBOutlet weak var valueRed: UILabel!
    @IBOutlet weak var valueGreen: UILabel!
    @IBOutlet weak var valueBlue: UILabel!
    
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        styleSliderRed()
        styleSliderGreen()
        styleSliderBlue()
        
        colorView()
        
    }

    @IBAction func changeRedSlider() {
        valueRed.text = String(format: "%.2f", sliderRed.value)
        
        viewColor.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }
    
    @IBAction func changeGreenSlider() {
        valueGreen.text = String(format: "%.2f", sliderGreen.value)
        
        viewColor.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }
    
    @IBAction func changeBlueSlider() {
        valueBlue.text = String(format: "%.2f", sliderBlue.value)
        
        viewColor.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }
    
   
    //MARK: Private Methods
    
    func colorView() {
       viewColor.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }

    
    func styleSliderRed() {
        
        sliderRed.value = 0.1
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 1
        sliderRed.minimumTrackTintColor = .red
        sliderRed.thumbTintColor = .blue
        
        valueRed.text = String(sliderRed.value)
    }
        
    func styleSliderGreen() {
        
        sliderGreen.value = 0.3
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 1
        sliderGreen.minimumTrackTintColor = .green
        sliderGreen.thumbTintColor = .blue
        
        valueGreen.text = String(sliderGreen.value)

    }
    
    func styleSliderBlue() {
        
        sliderBlue.value = 0.5
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 1
        sliderBlue.minimumTrackTintColor = .blue
        sliderBlue.thumbTintColor = .blue
        
        valueBlue.text = String(sliderBlue.value)
    }
       
}

