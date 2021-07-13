//
//  HomeTableViewCell.swift
//  ProjectMini
//
//  Created by Sơn on 6/30/21.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var lblRoom: UILabel!
    
    @IBOutlet weak var lblpeople: UILabel!
    
    @IBOutlet weak var imgRoom: UIImageView!
    
    @IBOutlet weak var stackviewRoom: UIStackView!
    
    @IBOutlet weak var viewProgress: ProgressBarUIView!
   
    @IBOutlet weak var viewProgress2: ProgressBarUIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        viewProgress.foregroundLayer?.strokeEnd = viewProgress.layerColer
//        viewProgress2.foregroundLayer1?.strokeEnd = viewProgress2.layerColer1
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
