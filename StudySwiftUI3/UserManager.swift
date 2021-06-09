//
//  UserManager.swift
//  StudySwiftUI3
//
//  Created by Дэвид Бердников on 09.06.2021.
//

import Combine

class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
}
