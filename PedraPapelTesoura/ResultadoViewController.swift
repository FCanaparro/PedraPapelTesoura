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
            if resultado==2{
                    resultadoLabel.text="papel enrola pedra, voce perdeu!"
                    resultadoImagem.image=#imageLiteral(resourceName: "PaperCoversRock.jpg")
            }else if resultado==3{
                resultadoLabel.text="pedra quebra tesoura, voce ganhou!"
                resultadoImagem.image=#imageLiteral(resourceName: "RockCrushesScissors.jpeg")
            }else{
                resultadoLabel.text="Empate!"
                resultadoImagem.image=#imageLiteral(resourceName: "itsATie.png")
            }
    
        }else if escolhi==2{
            if resultado==1{
                resultadoLabel.text="papel enrola pedra, voce ganhou!"
                resultadoImagem.image=#imageLiteral(resourceName: "PaperCoversRock.jpg")
            }else if resultado==3{
                resultadoLabel.text="tesoura corta papel, voce perdeu!"
                resultadoImagem.image=#imageLiteral(resourceName: "ScissorsCutPaper.jpg")
            }else{
                resultadoLabel.text="Empate!"
                resultadoImagem.image=#imageLiteral(resourceName: "itsATie.png")
            }
        }else if escolhi==3{
            if resultado==1{
                resultadoLabel.text="Pedra quebra tesoura, voce perdeu!"
                resultadoImagem.image=#imageLiteral(resourceName: "RockCrushesScissors.jpeg")
            }else if resultado==2{
                resultadoLabel.text="tesoura corta papel, voce ganhou!"
                resultadoImagem.image=#imageLiteral(resourceName: "ScissorsCutPaper.jpg")
            }else{
                resultadoLabel.text="Empate!"
                resultadoImagem.image=#imageLiteral(resourceName: "itsATie.png")
            }
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
