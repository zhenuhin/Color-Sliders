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
        setupSliders(for: redSlider)
        setupSliders(for: greenSlider)
        setupSliders(for: blueSlider)
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func redSliderMoved() {
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        changeViewColor()
    }
    @IBAction func greenSliderMoved() {
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        changeViewColor()
    }
    @IBAction func blueSliderMoved() {
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        changeViewColor()
        
    }
    
    
    private func setupSliders(for slider: UISlider) {
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.value = 0
    }
    
    private func changeViewColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }

}

