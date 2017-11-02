//
//  ResultadoViewController.swift
//  PedraPapelTesoura
//
//  Created by  Felix Canaparro on 01/11/2017.
//  Copyright © 2017  Felix Canaparro. All rights reserved.
//

import UIKit


class ResultadoViewController: UIViewController {
    var resultado:Int?
    var escolhi:Int?
    //1 pedra
    //2 papel
    //3 tesoura
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if escolhi==1{
            resultadoLabel.text="Escolhi Pedra"
        }else if escolhi==2{
            resultadoLabel.text="Escolhi Papel"
        }else if escolhi==3{
            resultadoLabel.text="Escolhi Tesoura"
        }
        
        //unrwapp
       /* if let reultado = self.resultado{
        }else{
            self.resultado = nil
            self.resultadoImagem=nil
        }
        if let escolhi = self.resultado{
        }else{
            self.resultado = nil
            self.resultadoLabel=nil
        }*/
        
        
        
        // Do any additional setup after loading the view.
    }
  
    @IBAction func jogarNovamente(_ sender: Any) {
            // dismiss this view controller
            self.dismiss(animated: true, completion: nil)
        }
    
    @IBOutlet var resultadoImagem:UIImageView!
    @IBOutlet var resultadoLabel:UILabel!
    

}
