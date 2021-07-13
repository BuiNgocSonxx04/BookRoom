//
//  DetailBookRoomViewController.swift
//  ProjectMini
//
//  Created by Sơn on 7/3/21.
//

import UIKit

class DetailBookRoomViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var lblRoom: UILabel!
    
    @IBOutlet weak var lblPeople: UILabel!
    
    @IBOutlet weak var btnBook: UIButton!
    
    @IBOutlet weak var lblTimeStart: UILabel!
    
    @IBOutlet weak var lblTimeEnd: UILabel!
    
    @IBOutlet weak var btnInvalid: UIButton!
    
    var rooms: RoomDto?
    //var rooms = RoomDto()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //imgView.image = img
        // Do any additional setup after loading the view.
        
        btnInvalid.backgroundColor = .clear
        btnInvalid.layer.cornerRadius = 8
        btnInvalid.layer.borderWidth = 1
        btnInvalid.layer.borderColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        lblRoom.text = rooms?.room
        lblPeople.text  = rooms?.people
        imgView.image = UIImage(named: rooms?.img ?? "")
        
        
    }

    @IBAction func btn_Back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btn_Book(_ sender: UIButton) {
        var checkBookRoom: PopupSuccessBookViewController!
        checkBookRoom = PopupSuccessBookViewController(nibName: "PopupSuccessBookViewController", bundle: nil)
        self.view.alpha = 1.0
        checkBookRoom.checkPopup = self
        self.presentpopupViewController(popupViewController: checkBookRoom, animationType: SLpopupViewAnimationType.Fade, completion: { () -> Void in 
            
        })
    }
    
    @IBAction func btn_SetTime(_ sender: Any) {
        var popup: PopupTimeViewController!
        popup = PopupTimeViewController(nibName: "PopupTimeViewController", bundle: nil)
        self.view.alpha = 1.0
        popup.closePopup = self
        self.presentpopupViewController(popupViewController: popup, animationType: SLpopupViewAnimationType.BottomTop, completion: { ()
            -> Void in
        })
    }
    
    
    @IBAction func btn_AddMenber(_ sender: Any) {
        var addmenber: InvatedMenberViewController!
        addmenber = InvatedMenberViewController(nibName: "InvatedMenberViewController", bundle: nil)
        addmenber.view.alpha = 1.0
        addmenber.closepopup = self
        self.presentpopupViewController(popupViewController: addmenber, animationType: SLpopupViewAnimationType.BottomTop, completion: { () -> Void in
            
        })
    }
    
}

extension DetailBookRoomViewController: checkBookRoom {
    func checkRoom() {
        self.dismissPopupViewController(animationType: SLpopupViewAnimationType.Fade)
    }
    
}

extension DetailBookRoomViewController: PopupcheckTime {
    func closeTap(_ timeStart: String, _ timeEnd: String) {
        lblTimeStart.text = timeStart
        lblTimeEnd.text = timeEnd
        self.dismissPopupViewController(animationType: SLpopupViewAnimationType.Fade)
    }
    
    
}
extension DetailBookRoomViewController: popupInvated {
    func close() {
        self.dismissPopupViewController(animationType: SLpopupViewAnimationType.Fade)
    }
    
    
}
