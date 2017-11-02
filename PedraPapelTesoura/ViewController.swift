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
    func escolhaAdversario() -> Int {
            // Generate a random Int32 using arc4Random
            let randomValue = 1 + arc4random() % 3
            // Return a more convenient Int, initialized with the random value
            return Int(randomValue)
        }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller=segue.destination as! ResultadoViewController
        controller.resultado = self.escolhaAdversario()
        if segue.identifier=="escolhiPedra"{
            controller.escolhi=1
        }
        else if segue.identifier=="escolhiPapel"{
            controller.escolhi=2
        }
        else if segue.identifier=="escolhiTesoura"{
            controller.escolhi=3
        }

    }

}

