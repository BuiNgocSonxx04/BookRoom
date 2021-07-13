//
//  InvatedMenberViewController.swift
//  ProjectMini
//
//  Created by Sơn on 7/6/21.
//

import UIKit

protocol popupInvated {
    func close()
}

class InvatedMenberViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var btnSuccess: UIButton!
    
    var itemdefaults: [DataMenberDto] = [
        DataMenberDto(name:"Đào Thị Hạnh",email:"Handdt@ttc-solutions.com.vn",img:"Avatar"),
        DataMenberDto(name:"Trần Huyền Trang",email:"Trangth@ttc-solutions.com.vn",img: "Avatar1"),
        DataMenberDto(name:"Nguyễn Thịnh Cường",email:"Cuongnt@ttc-solutions.com.vn",img: "Avatar2"),
        DataMenberDto(name:"Trần Huỳnh Đức",email:"Ducth@ttc-solutions.com.vn",img: "Avatar2"),
        DataMenberDto(name:"Bùi Ngọc Sơn",email:"Sonbn@ttc-solutions.com.vn",img: "Avatar2"),
        DataMenberDto(name:"Nguyễn Thị Hoà",email:"Hoant@ttc-solutions.com.vn",img: "Avatar2")
        ]
    
    var closepopup: popupInvated?
    var searchActive : Bool = false
     
    lazy var filtered: [DataMenberDto] = itemdefaults
    var filteredData:[String]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initView()
        btnSuccess.layer.cornerRadius = 8
    }

    private func initView() {
        tableView.register(UINib(nibName: "MenberTableViewCell", bundle: nil), forCellReuseIdentifier: "MenberTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        searchBar.delegate = self
    }
    @IBAction func btn_Exit(_ sender: Any) {
        self.closepopup?.close()
    }
    
    @IBAction func btn_Success(_ sender: Any) {
        self.closepopup?.close()
    }

}
extension InvatedMenberViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return filtered.count
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MenberTableViewCell", for: indexPath) as? MenberTableViewCell else {
            return UITableViewCell()
        }
        cell.bindata(data: DataMenberDto(name: filtered[indexPath.row].name, email: filtered[indexPath.row].email, img: filtered[indexPath.row].img))
        //cell.lblName.text = filtered[indexPath.row].name
        //cell.lblEmail.text = filtered[indexPath.row].email
        //cell.lblImage.image = UIImage(named: filtered[indexPath.row].img )
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
}

extension InvatedMenberViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        let searchData = searchText
        if searchData == "" {
            filtered = itemdefaults
            
        } else {
            filtered = itemdefaults.filter { item in
                return (item.email.contains(searchData))
            }
            
        }
        self.tableView.reloadData()
    
    }
}
