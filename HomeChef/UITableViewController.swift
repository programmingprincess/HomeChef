//
//  UITableViewController.swift
//  
//
//  Created by Jiaqi Wu on 1/23/16.
//
//

import Cocoa

class UITableViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        //create tap gesture recognizer
        let tapGesture = UITapGestureRecognizer(target: self, action: "imageTapped:")
        
        //add it to image view 
        imageView.addGestureRecognizer(tapGesture)
        
        //make sure imageView can be interacted with by user 
        imageView.userInteractionEnabled = true
    }
    
    func imageTapped(gesture: UITapGestureRecognizer) {
        //if the tapped view is a UIImageVIew, then set it to imageview 
        if let imageView = gesture.view as? UIImageVIew {
            println("Image Tapped")
            //initiate new view controller here
            
            
        }
    }
    
}
