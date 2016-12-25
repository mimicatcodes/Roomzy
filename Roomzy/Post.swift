//
//  Post.swift
//  Roomzy
//
//  Created by Luna An on 12/24/16.
//  Copyright © 2016 Mimicatcodes. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase

typealias TimeStamp = [AnyHashable : Any]

struct Post {
    
    var content: String // Content is image URL for a photo
    var timestamp: String
    var uniqueID: String
    var naturalTime: String?
    
    init(dictionary: [String : Any]) {
        content = dictionary["content"] as? String ?? "No Content"
        timestamp = dictionary["timestamp"] as? String ?? "No Time"
        uniqueID = dictionary["uniqueID"] as? String ?? "No ID"
        naturalTime = dictionary["naturalTime"] as? String ?? "No Natural Time"
    }
    
    init(content: String, timestamp: String, uniqueID: String) {
        self.content = content
        self.timestamp = timestamp
        self.uniqueID = uniqueID
    }
    
    func serialize() -> [String : Any] {
        return ["content": content,
                "timestamp": timestamp,
                "uniqueID": uniqueID,
                "naturalTime": getNaturalTime()]
    }
    
    func getNaturalTime() -> String {
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d, yyyy @ h:mma"
        
        return dateFormatter.string(from: currentDate).uppercased()
    }
}
