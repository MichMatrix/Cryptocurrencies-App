//
//  DetalhesViewController.swift
//  desafioMoedas
//
//  Created by Student on 24/10/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class DetalhesViewController: UIViewController {
    
    var detalhe = [Moedas]()
    
    @IBOutlet weak var inputRank: UILabel!
    @IBOutlet weak var inputMoeda: UILabel!
    @IBOutlet weak var inputPreco: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputRank.text = detalhe[0].name
        inputMoeda.text = detalhe[0].rank
        inputPreco.text = detalhe[0].priceUsd
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    

}
