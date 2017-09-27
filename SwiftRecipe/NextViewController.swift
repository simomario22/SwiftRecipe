//
//  NextViewController.swift
//  SwiftRecipe
//
//  Created by Garrett Barker on 9/26/17.
//  Copyright © 2017 Garrett Barker. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    var info: Dictionary<String, AnyObject>?
    
    
    @IBOutlet var ingredientsTV: UITextView!
    @IBOutlet var directionsTV: UITextView!
    @IBOutlet var image: UIImageView!
    @IBOutlet var titleLBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLBL.text = info?["name"] as? String
        image.image = info?["image"] as? UIImage
        directionsTV.text = info?["directions"] as? String
        ingredientsTV.text = info?["ingredients"] as? String
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
