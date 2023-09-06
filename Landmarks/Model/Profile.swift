//
//  Profile.swift
//  Landmarks
//
//  Created by Đinh Trần Việt Anh on 06/09/2023.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "g_kumar")
    
    enum Season: String, CaseIterable, Identifiable {
        case sptring = "🌷"
        case summer = "🌞"
        
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String {rawValue}
    }
}
