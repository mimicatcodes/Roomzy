//
//  FirebaseMethods.swift
//  Roomzy
//
//  Created by Robert Deans on 12/23/16.
//  Copyright © 2016 Mimicatcodes. All rights reserved.
//

import Foundation
import Firebase

final class FIRClient {
    
    // Firebase Root Reference
    static let ref = FIRDatabase.database().reference()
    
    // MARK: Create new user account
    static func createAccount(firstName: String, email: String, password: String, completion: @escaping () -> Void) {
        FIRAuth.auth()?.createUser(withEmail: email, password: password) { user, error in
            guard error == nil else {
                print("error creating firebase user")
                return
            }
            
            guard let user = user else {
                print("error unwrapping new user data")
                return
            }
            
            ref.child("users").updateChildValues([user.uid : ["firstName" : firstName, "email": email]])
            
            completion()
        }
    }
    
    // MARK: Existing User Login
    static func login(email: String, password: String, completion: @escaping () -> Void) {
        FIRAuth.auth()?.signIn(withEmail: email, password: password) { user, error in
            guard error == nil else {
                print("error signing user in")
                return
            }
            
            completion()
        }
    }
    
    
}
