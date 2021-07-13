//
//  MenberTableViewCell.swift
//  ProjectMini
//
//  Created by Sơn on 7/6/21.
//

import UIKit

class MenberTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblImage: UIImageView!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblEmail: UILabel!
        
    @IBOutlet weak var btnCheckbox: UIButton!
    
    var customObject: DataMenberDto!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        isUserInteractionEnabled = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
//    func doChangeLayout(name: String, email: String, img: UIImage) {
//        lblName.text = name
//        lblEmail.text = email
//        lblImage.image = img
//    }
    
    func bindata(data: DataMenberDto){
        lblName.text = data.name
        lblEmail.text = data.email
        lblImage.image = UIImage(named: data.img)
        //btnCheckbox.isSelected = customObject.isSelected
    }
    
    @IBAction func btn_Checkbox(_ sender: UIButton) {
//        customObject.isSelected = !customObject.isSelected
//        var pathImage = ""
//        if customObject.isSelected {
//            pathImage = "checked"
//        } else {
//            pathImage = "unchecked"
//        }
//        sender.setBackgroundImage(UIImage(named: pathImage), for: UIControl.State.normal)
    }
    
}
