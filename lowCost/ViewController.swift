//
//  ViewController.swift
//  lowCost
//
//  Created by Apple on 3/6/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var cost: [[Int]] = [ [3,4,1,2,8,6], [6,1,8,2,7,4],[5,9,3,9,9,5],[8,4,1,3,2,6],[3,7,2,8,6,4]]
      //  var cost: [[Int]] = [ [3,4,1,2,8,6], [6,1,8,2,7,4], [5,9,3,9,9,5],[8,4,1,3,2,6],[3,7,2,1,2,3]]
        
        
        var tc: [[Int]] = [ [0,0,0,0,0,0], [0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0]]
        tc[0][0]=cost[0][0]
        
        /* Initialize first column of total cost(tc) array */
        for i in 1...4{
        tc[i][0] = tc[i-1][0] + cost[i][0]
        }
        
        /* Initialize first row of tc array */
        for j in 1...5 {
        tc[0][j] = tc[0][j-1] + cost[0][j]
        }
        
        
        /* populatinf the other value for TC array */
        for i in 1...4 {
            
            for j in 1...5 {
                
                let minimum = min(tc[i-1][j-1],tc[i-1][j],tc[i][j-1])
                tc[i][j] = minimum + cost[i][j]
            }
        }

        print("cost \(tc[4][5])")
        
    

    }
    
    
    

 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
 
        
    }


}

