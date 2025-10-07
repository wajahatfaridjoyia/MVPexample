//
//  ViewController.swift
//  MVPexample
//
//  Created by mac on 30/4/2025.
//

import UIKit

class TrafficLightViewController: UIViewController, TrafficLightViewDelegate {
    @IBOutlet weak var descriptionLabel:UILabel!
    private let trafficLightPresnter = TrafficLightPresenter(trafficLightService:TrafficLightService())
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightPresnter.setViewDelegate(trafficLightViewDelegate: self)
    }
    @IBAction func redlightAction(_sender : Any){
        trafficLightPresnter.trafficLightColorSelected(colorName: "Red")
    }
    @IBAction func greenlightAction(_sender : Any){
        trafficLightPresnter.trafficLightColorSelected(colorName: "Green")
    }
    @IBAction func yellowlightAction(_sender : Any){
        trafficLightPresnter.trafficLightColorSelected(colorName: "Yellow")
    }
    func displayTrafficLight(description: (String)) {
        descriptionLabel.text = description
    }
}
