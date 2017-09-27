//
//  ViewController.swift
//  SwiftRecipe
//
//  Created by Garrett Barker on 9/26/17.
//  Copyright © 2017 Garrett Barker. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var myDict: NSArray?
    
    var selectedObject: Dictionary<String, AnyObject> = [:]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (myDict?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let obj = myDict?.object(at: indexPath.row) as! Dictionary<String, AnyObject>
        cell.textLabel?.text = obj["name"] as? String
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedObject = myDict?.object(at: indexPath.row) as! Dictionary<String, AnyObject>
        performSegue(withIdentifier: "show", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let path = Bundle.main.path(forResource: "recipes", ofType: "plist") {
            myDict = NSArray(contentsOfFile: path)
        }
        print(myDict as Any)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! NextViewController
        vc.info = selectedObject
    }

}

