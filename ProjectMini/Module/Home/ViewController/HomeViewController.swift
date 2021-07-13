//
//  ViewController.swift
//  ProjectMini
//
//  Created by Sơn on 6/30/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let itemsRoom: [String] = ["Phòng hội nhập", "Phòng sáng tạo", "Phòng tốc độ"]
    
    let itemsPeople: [String] = ["Max: 18 người", "Max 10 người", "Max: 4 người"]
    
    let imgView: [String]  = ["Rectangle1", "Rectangle2", "Rectangle3"]
    
    var rooms: RoomDto?
    //rooms = RoomDto()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
        
        
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    func saveInfoRoom(room: String, people: String, img: String) {
        rooms = RoomDto(room, people, img)
        //init no _ rooms = RoomDto(Room:room, People:people, Img:img)
//        rooms?.room = room
//        rooms?.people = people
//        rooms?.img = img
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        itemsRoom.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
        cell.lblRoom.text = itemsRoom[indexPath.row]
        cell.lblpeople.text = itemsPeople[indexPath.row]
        cell.imgRoom.image = UIImage(named: imgView[indexPath.row])
        return cell
    }
}
    
extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = BookRoomViewController(nibName: "BookRoomViewController", bundle: nil)
        saveInfoRoom(room: itemsRoom[indexPath.row], people: itemsPeople[indexPath.row], img: imgView[indexPath.row])
        vc.rooms = self.rooms
        self.navigationController?.pushViewController(vc, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 236
    }
}
