//
//  AdminModel.swift
//  Less7HW
//

//

import Foundation

struct AdminModel {
    
    let adminAvatarName: String
    let adminFirstName: String
    let adminLastName: String
    let adminEmail: String
    let adminAdderss: String
}

extension AdminModel: ProfileData {
    var avatarName: String {
        adminAvatarName
    }
    
    var firstName: String {
        adminFirstName
    }
    
    var lastName: String {
        adminLastName
    }
    
    var email: String {
        adminEmail
    }
    
    var address: String {
        adminAdderss
    }
    
    
}
