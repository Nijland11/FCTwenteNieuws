//
//  ViewController.swift
//  FCTwenteNieuws
//
//  Created by MacChris on 15/04/16.
//  Copyright © 2016 Chris Nijland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        //call API
        let api = APIManager()
        api.loadData("http://api.football-data.org/v1/soccerseasons/404/leagueTable",
        completion: didLoadData)
        
        
        
        
        
    }
    
    func didLoadData(result:String) {
       
        let alert = UIAlertController(title: (result), message: nil, preferredStyle: .
        Alert)
        
        let okAction = UIAlertAction(title: "OK", style: .Default) { acttion -> Void in
            //do something if you want
            
        }
        
        alert.addAction(okAction)
        self.presentViewController(alert,animated: true, completion: nil)
        
        
        
    }

    
}

