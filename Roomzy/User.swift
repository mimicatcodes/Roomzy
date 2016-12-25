//
//  User.swift
//  
//
//  Created by Robert Deans on 12/23/16.
//
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

struct User {
    
    let email: String
    var profileImage: UIImage?
    var profileImageStr: String? // imageURL
    var firstName: String
    var lastName: String
    var birthday: String?
    var gender: String?
    var houseID: String?
    var uniqueID: String
    

    // MARK: - Initializers
    
    init(email: String, profileImage: UIImage?, profileImageStr: String?,firstName: String, lastName: String, birthday: String?, gender: String?, houseID: String?, uniqueID: String) {
       
        self.email = email
        self.profileImage = profileImage
        self.profileImageStr = profileImageStr
        self.firstName = firstName
        self.lastName = lastName
        self.birthday = birthday
        self.gender = gender
        self.houseID = houseID
        self.uniqueID = uniqueID
      
    }
    
    init(dictionary: [String : Any], id: String) {
        
        email = dictionary["email"] as? String ?? "No Email"
        profileImageStr = dictionary["profileImage"] as? String ?? "No Image URL"
        firstName = dictionary["firstName"] as? String ?? "No First Name"
        lastName = dictionary["lastName"] as? String ?? "No Last Name"
        gender = dictionary["gender"] as? String ?? "No Gender"
        birthday = dictionary["birthday"] as? String ?? "No Birthday"
        houseID = dictionary["houseID"] as? String ?? "No House ID"
        uniqueID = id
    }
    
    init(snapshot: FIRDataSnapshot) {
        
        let snapshotValue = snapshot.value as? [String : AnyObject]
        
        email = snapshotValue?["email"] as? String ?? "No Email"
        profileImageStr = snapshotValue?["profileImage"] as? String ?? "No Image URL"
        firstName = snapshotValue?["firstName"] as? String ?? "No First Name"
        lastName = snapshotValue?["lastName"] as? String ?? "No Last Name"
        gender = snapshotValue?["gender"] as? String ?? "No Gender"
        birthday = snapshotValue?["birthday"] as? String ?? "No Birthday"
        houseID = snapshotValue?["houseID"] as? String ?? "No House ID"
        uniqueID = snapshotValue?["uniqueID"] as? String ?? "No ID"
        
    }
    
    func serialize() -> [String : Any] {
        return  ["email": email, "profileImage" : profileImageStr, "firstName" : firstName, "lastName": lastName, "gender" : gender, "birthday": birthday, "houseID": houseID, "uniqueID" : uniqueID]
    }
    
}

