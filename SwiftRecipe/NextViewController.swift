//
//  NextViewController.swift
//  SwiftRecipe
//
//  Created by Garrett Barker on 9/27/17.
//  Copyright © 2017 Garrett Barker. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    var info: Dictionary<String, AnyObject>?
    
    @IBOutlet var nameLBL: UILabel!
    @IBOutlet var recipeImageView: UIImageView!
    @IBOutlet var ingredientsTV: UITextView!
    @IBOutlet var directionsTV: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameLBL.text = info?["name"] as? String
        
        if FileManager.default.fileExists(atPath: (info!["image"] as? String)!) {
            let url = NSURL(string: (info!["image"] as? String)!)
            let data = NSData(contentsOf: url! as URL)
            recipeImageView.image = UIImage(data: data! as Data)
        }
        
       // recipeImageView.image = UIImage(URL: value)
        ingredientsTV.text = info?["ingredients"] as? String
        directionsTV.text = info?["directions"] as? String
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
}
