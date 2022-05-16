//
//  ViewController.swift
//  NsAttributesString
//
//  Created by arshad on 5/13/22.
//

import UIKit

class ViewController: UIViewController {
    
    var label:UILabel = {
        var label = UILabel()
        label.numberOfLines = 0
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         let date = Date()
         let calendar = Calendar. current.
         let hour = calendar. component(. hour, from: date)
         let minutes = calendar. component(. minute, from: date)
         
         */
        
      
        
        let stringData = "yours Package will be expire \(Date().description.prefix(10))"
        
//        let imagesText = NSTextAttachment()
//        imagesText.image = UIImage(systemName:"circle", compatibleWith: .current)
//        let at = NSAttributedString(attachment: imagesText)
        
        
        let at = NSAttributedString(attachment: NSTextAttachment(image: UIImage(systemName: "person")!))
        
        let mutablestring = NSMutableAttributedString(string: stringData, attributes: [NSAttributedString.Key.font:UIFont.systemFont(ofSize: 18, weight: .regular) ])
        mutablestring.addAttributes([NSAttributedString.Key.font:UIFont.systemFont(ofSize: 15, weight: .bold),.foregroundColor:UIColor.red ], range: NSRange(location: 29, length: 10))
        
        mutablestring.append(at)
        label.attributedText = mutablestring
        view.addSubview(label)
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        label.frame = CGRect(x: 0, y: 100, width: view.frame.width, height: 200)
    }
}
