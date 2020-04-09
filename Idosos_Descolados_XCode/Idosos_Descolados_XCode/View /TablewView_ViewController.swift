//
//  TablewView_ViewController.swift
//  Idosos_Descolados_XCode
//
//  Created by Gáudio Ney on 09/04/20.
//  Copyright © 2020 Gáudio Ney. All rights reserved.
//

import UIKit

class TablewView_ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{

    @IBOutlet var TableViewAtividade: UITableView!
    
    var atividadeArray: [AtividadesExistentes] = []
    
    
    class AtividadesExistentes {
    var nomeAtividade:String
    var modalidadeAtividade:ModalidadeBoladona
    var image:String
    init (nomeAtividade:String, modalidadeAtividade:ModalidadeBoladona, image:String)
    {
        self.nomeAtividade = nomeAtividade
        self.modalidadeAtividade = modalidadeAtividade
        self.image = image
    }
        enum ModalidadeBoladona:String
        {
            case corrida = "Corrida"
            case ciclismo = "Ciclismo"
            case yoga = "Yoga"
        }
        
    }
    private func setUpAtividades()
       {
           atividadeArray.append(AtividadesExistentes(nomeAtividade:"Corrida na Praça", modalidadeAtividade: .corrida, image: "SaudeNaPraca"))
           atividadeArray.append(AtividadesExistentes(nomeAtividade:"Saude na Praça", modalidadeAtividade: .corrida, image: "SaudeNaPraca"))
           atividadeArray.append(AtividadesExistentes(nomeAtividade:"Corrida na orla de Copa", modalidadeAtividade: .corrida, image: "SaudeNaPraca"))
        atividadeArray.append(AtividadesExistentes(nomeAtividade: "Yoga em Copa", modalidadeAtividade: .yoga, image: "SaudeNaPraca"))
        
           for atividade in atividadeArray
           {
               print (atividade.nomeAtividade)
           }
       }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        TableViewAtividade.dataSource = self
        TableViewAtividade.delegate = self
        self.setUpAtividades()
    }

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return atividadeArray.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier:"Cell", for: indexPath) as? TableViewCellFeedBusca else
            {
                return UITableViewCell()
            }
            print ("Atividade Array: ", atividadeArray.count)
            cell.NomeAtividadeLabelCell.text = atividadeArray[indexPath.row].nomeAtividade
            cell.ModalidadeAtividadeLabelCell.text = atividadeArray[indexPath.row].modalidadeAtividade.rawValue
            cell.ImagemAtividadeCell.image = UIImage(named: atividadeArray[indexPath.row].image)
            cell.LocalAtividadeLabelCell.text = "Copacabana"
            cell.HoraAtividadeLabelCell.text = "10h"
            return cell
        }
}
