//
//  ViewController.swift
//  PedraPapelTesoura
//
//  Created by  Felix Canaparro on 26/10/2017.
//  Copyright © 2017  Felix Canaparro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pedraVCViewController"{
            let controller = segue.destination as! pedraVCViewController
        }
    }
        
    
    @IBAction func escolhiPapel(_ sender: Any) {
    
    let controller: papelViewController
        controller = storyboard?.instantiateViewController(withIdentifier: "papelViewController") as! papelViewController
   // controller.firstValue=randomDiceValue()
    //controller.secondValue=randomDiceValue()
    
    present(controller, animated: true, completion:nil)
    }
}

