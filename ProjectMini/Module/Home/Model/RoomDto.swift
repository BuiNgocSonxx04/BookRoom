//
//  RoomDto.swift
//  ProjectMini
//
//  Created by Sơn on 7/5/21.
//

import Foundation

class RoomDto {
    var room: String?
    var people: String?
    var img: String?
    //var room1 = String()
    
    init(_ Room: String, _ People: String, _ Img:String ) {
        self.room = Room
        self.people = People
        self.img = Img
    }
    
    init() {
        
    }
}
