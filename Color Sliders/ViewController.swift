//
//  ViewController.swift
//  Color Sliders
//
//  Created by Александр Женухин on 10.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!

    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 20
        setupSlider(for: redSlider)
        setupSlider(for: greenSlider)
        setupSlider(for: blueSlider)
        changeViewColor()
    }
    
    @IBAction func redSliderMoved() {
        changeLabelText(from: redSlider, for: redValueLabel)
        changeViewColor()
    }
    @IBAction func greenSliderMoved() {
        changeLabelText(from: greenSlider, for: greenValueLabel)
        changeViewColor()
    }
    @IBAction func blueSliderMoved() {
        changeLabelText(from: blueSlider, for: blueValueLabel)
        changeViewColor()
        
    }
    
    private func setupSlider(for slider: UISlider) {
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.value = 0
    }
    
    private func changeViewColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    private func changeLabelText(from slider: UISlider, for label: UILabel) {
        label.text = String(format: "%.2f", slider.value)
    }

}

