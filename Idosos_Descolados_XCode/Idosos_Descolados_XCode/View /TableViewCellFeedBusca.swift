//
//  TableViewCellFeedBusca.swift
//  Idosos_Descolados_XCode
//
//  Created by Gáudio Ney on 08/04/20.
//  Copyright © 2020 Gáudio Ney. All rights reserved.
//

import UIKit

class TableViewCellFeedBusca: UITableViewCell {
    
    
    
    @IBOutlet var ImagemAtividadeCell: UIImageView!
    @IBOutlet var NomeAtividadeLabelCell: UILabel!
    
    @IBOutlet var ModalidadeAtividadeLabelCell: UILabel!
    @IBOutlet var LocalAtividadeLabelCell: UILabel!
    @IBOutlet var HoraAtividadeLabelCell: UILabel!
    @IBOutlet var LabelNome: UILabel!
    
    @IBOutlet var LabelModalidade: UILabel!
    
    @IBOutlet var LabelLocal: UILabel!
    
    @IBOutlet var LabelHora: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        //Oie GEnte!
    }

}
