//
//  BookRoomViewController.swift
//  ProjectMini
//
//  Created by Sơn on 7/3/21.
//

import UIKit

class BookRoomViewController: UIViewController {

    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var btnBookRoom: UIButton!
    
    var rooms: RoomDto?
    //var rooms = RoomDto()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //imgView.image = img
        imgView.image = UIImage(named: rooms?.img ?? "")
        // Do any additional setup after loading the view.
        imgView.layer.cornerRadius = 15
        btnBookRoom.layer.cornerRadius = 15
    }

    
    
    @IBAction func btn_Back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btn_BookRoom(_ sender: Any) {
        let vc = DetailBookRoomViewController(nibName: "DetailBookRoomViewController", bundle: nil)
        vc.rooms = self.rooms
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
