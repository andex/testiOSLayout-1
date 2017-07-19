//
//  ViewController.swift
//  testiOSLayout-1
//
//  Created by Andrey on 18.07.17.
//  Copyright © 2017 Andrey Anashkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var descriptionText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeGradienLayer(gradientView)
        setLineHeight()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func makeGradienLayer(_ gradienView: UIView?) {
        let gradient = CAGradientLayer()
        gradient.frame = gradientView.bounds
        
        let color1 = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0).cgColor
        let color2 = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.5).cgColor
        gradient.colors = [color1, color2]
        gradient.locations = [0.0,1.0]
        
        gradientView.layer.addSublayer(gradient)
    }
    func setLineHeight() {
        
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 1.5
        let attrString = NSMutableAttributedString(string: descriptionText.text!)
        attrString.addAttribute(NSParagraphStyleAttributeName, value:paragraphStyle, range:NSMakeRange(0, attrString.length))
        descriptionText.attributedText = attrString
        descriptionText.textAlignment = NSTextAlignment.left
    }

}

