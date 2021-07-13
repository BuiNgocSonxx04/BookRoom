//
//  DataMenberDto.swift
//  ProjectMini
//
//  Created by Sơn on 7/6/21.
//

import Foundation

class DataMenberDto {
    var name: String
    var email: String
    var img: String
    var isSelected: Bool
    
    init() {
        name = ""
        email = ""
        img = ""
        isSelected = false
    }
    
    init(name: String, email: String, img: String) {
        self.name = name
        self.email = email
        self.img = img
        self.isSelected = false
    }
}

//class CustomObject {
//    var name: String
//    var email: String
//    var img: UIImage
//    var isSelected: Bool
//
//    init(name: String, email: String, img: UIImage) {
//        self.name = name
//        self.email = email
//        self.img = img
//        self.isSelected = false
//    }
//    func clone() -> CustomObject {
//         let newObject = CustomObject(name: self.name, email: self.email , img: self.img)
//         newObject.isSelected = self.isSelected
//         return newObject
//     }
// }
