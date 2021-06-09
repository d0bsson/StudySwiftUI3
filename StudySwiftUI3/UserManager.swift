//
//  UserManager.swift
//  StudySwiftUI3
//
//  Created by Дэвид Бердников on 09.06.2021.
//

import SwiftUI

class UserManager: ObservableObject {
    @AppStorage("isRegistered") var isRegister: Bool = false {
        willSet {
             self.objectWillChange.send()
        }
     }
    @AppStorage("userName") var name: String = ""
    
}
