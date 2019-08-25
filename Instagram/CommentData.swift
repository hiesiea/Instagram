//
//  CommentData.swift
//  Instagram
//
//  Created by Hitoshi KAMADA on 2019/08/25.
//  Copyright © 2019 hitoshi.kamada. All rights reserved.
//

import Foundation
import Firebase

class CommentData: NSObject {
    var id: String?
    var imageString: String?
    var name: String?
    var comment: String?
    
    init(snapshot: DataSnapshot) {
        self.id = snapshot.key
        
        let valueDictionary = snapshot.value as! [String: Any]

        self.imageString = valueDictionary["image"] as? String
        self.name = valueDictionary["name"] as? String
        self.comment = valueDictionary["comment"] as? String
    }
}
