//
//  ViewController.swift
//  HomeChef
//
//  Created by Jiaqi Wu on 1/22/16.
//  Copyright (c) 2016 Jiaqi Wu. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var beginButton: UIButton!
    @IBOutlet weak var meatsButton: UIButton!
    @IBOutlet weak var vegetablesButton: UIButton!
    @IBOutlet weak var fruitsButton: UIButton!
    @IBOutlet weak var pastaButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Parameters
        let ingredients = "bread,eggs,milk"
        let limitLicense = false
        let number = 2
        let ranking = 1
        
        let url = NSURL(string: "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/findByIngredients?ingredients=\(ingredients)&limitLicense=\(limitLicense)&number=\(number)&ranking=\(ranking)")
        let headers = [
            "X-Mashape-Key": "NHDnizUDH5mshbK6fNDHtFJAQRpDp1zYm3FjsnAVFgzGtVfsXi",
            "Accept": "application/json"
        ]
        
        // Request Handling
        Alamofire.request(.GET, url!, headers: headers, encoding: .JSON).responseJSON {
            // Response Handling
            response in switch response.result {
                case .Success:
                    let json = JSON(response.result.value!)
                    print("JSON: \(json)")
                    print("Selected JSON: \(json[0])")
                case .Failure(let error):
                    print("Request failed with error: \(error)")
            }
        }
    }

    @IBAction func category_OnClick(sender: AnyObject) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

