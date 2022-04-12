//
//  SettingSection.swift
//  codeBlanch
//
//  Created by Sharon Kang on 4/9/22.
//
protocol SectionType: CustomStringConvertible {
    var containsSwitch: Bool { get }
}


enum SettingSection: Int, CaseIterable,CustomStringConvertible {
    
    case Social
    case Communication
    
    
    var description: String {
        switch self {
        case .Social: return "Social"
        case .Communication: return "Communications"
        }
    }
}

enum SocialOptions: Int, CaseIterable, SectionType {
    
    case editProfile
    case logout
    
    var containsSwitch: Bool { return false }
    
    var description: String {
        switch self {
        case .editProfile: return "Edit Profile"
        case .logout: return "Log Out"
        }

    }
}

enum CommunicationOptions: Int, CaseIterable, SectionType {
    
    case notification
    case email
    case reportCrashes
    
    var containsSwitch: Bool { switch self {
    case .notification: return true
    case .email: return true
    case .reportCrashes: return false
    }}
    
    var description: String {
        switch self {
        case .notification: return "Notifications"
        case .email: return "Email"
        case .reportCrashes: return "Report Crashes"
        }

     }
}
