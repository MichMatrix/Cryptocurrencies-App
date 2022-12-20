//
//  TableViewController.swift
//  desafioMoedas
//
//  Created by Student on 21/10/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var moedas = [Moeda]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

         // let urlString = "https://api.coincap.io/v2/assets"
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        downloadJson {
            self.tableView.reloadData()
            print("sucesso")
        }
        
        /* if let url = URL(string: urlString) {
        
            if let data = try? Data(contentsOf: url) {
            parse(json: data)
            }
        } */
        
      
    }

    
    // MARK: - Table view data source

        override func numberOfSections(in tableView: UITableView) -> Int {
            // #warning Incomplete implementation, return the number of sections
            return 1
        }

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            return moedas.count
        }
    
   
       
    
       
    /* func parse(json: Data) {
        let decoder = JSONDecoder()
           
        if let jsonMoeda = try? decoder.decode(Moedas.self, from: json) {
               moedas = jsonMoeda.data
               tableView.reloadData()
           }
       }
       */

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    
        if let moedaCell = cell as? TableViewCell {
            let moeda = moedas[indexPath.row]
            
            moedaCell.rankMoeda.text = moeda.rank
            moedaCell.nameMoeda.text = moeda.name
           
            return moedaCell
        }
        return cell
    }
    
    func downloadJson(completed: @escaping () -> ()){
        let url = URL(string: "https://api.coincap.io/v2/assets")
        
        URLSession.shared.dataTask(with: url!) {
            data, response, err in
            if err == nil {
                do {
                    let array = try JSONDecoder().decode(Moedas.self, from: data!)
                    self.moedas = array.data
                    DispatchQueue.main.async {
                        completed()
                    }
                }
                catch {
                        print("error fetching data from api")
                }
            }
        }.resume()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalhes" {
            if let novaView = segue.destination as? DetalhesViewController {
                
                let celulaSelecionada = TableViewCell
            }
        }
    }
}
    





