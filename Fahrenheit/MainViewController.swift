//
//  MainViewController.swift
//  Fahrenheit
//
//  Created by Максим Соловьёв on 27.11.2020.
//

import UIKit

class MainViewController: UIViewController {
    
    let imageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "weather")
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    let topLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Converter"
        label.font = UIFont(name: "Copperplate", size: 40)
        label.textColor = .systemBlue
        label.backgroundColor = .clear
        label.textAlignment = .center
        return label
    }()
    
    let celsiusLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0°C"
        label.font = UIFont(name: "Copperplate", size: 40)
        label.textColor = .black
        label.backgroundColor = .clear
        label.textAlignment = .center
        return label
    }()
    
    let fahrenheitLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "32°F"
        label.font = UIFont(name: "Copperplate", size: 40)
        label.textColor = .black
        label.backgroundColor = .clear
        label.textAlignment = .center
        return label
    }()
    
    let converterSlider: UISlider = {
        let slider = UISlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = 0
        slider.isContinuous = true
        return slider
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        imageView.isUserInteractionEnabled = true
        converterSlider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
        setupConstraints()
    }
    
    @objc func sliderValueChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelsius)°C"
        let temperatureFahrenheit = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(temperatureFahrenheit)°F"
    }
    
    func setupConstraints() {
        
        view.addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        
        imageView.addSubview(converterSlider)
        converterSlider.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
        converterSlider.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive = true
        converterSlider.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 50).isActive = true
        converterSlider.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -50).isActive = true
        
        imageView.addSubview(celsiusLabel)
        celsiusLabel.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive = true
        celsiusLabel.bottomAnchor.constraint(equalTo: converterSlider.topAnchor, constant: -30).isActive = true
        celsiusLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
        celsiusLabel.widthAnchor.constraint(equalToConstant:135).isActive = true
        
        imageView.addSubview(fahrenheitLabel)
        fahrenheitLabel.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive = true
        fahrenheitLabel.topAnchor.constraint(equalTo: converterSlider.bottomAnchor, constant: 30).isActive = true
        fahrenheitLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        fahrenheitLabel.widthAnchor.constraint(equalToConstant: 135).isActive = true
        
        imageView.addSubview(topLabel)
        topLabel.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 10).isActive = true
        topLabel.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive = true
        topLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
        topLabel.trailingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        topLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
}
