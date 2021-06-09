//
//  DismissButton.swift
//  StudySwiftUI3
//
//  Created by Дэвид Бердников on 09.06.2021.
//

import SwiftUI

struct DismissButton: View {
    @EnvironmentObject var user: UserManager

    var body: some View {

        Button(action: {user.isRegister.toggle()}) {
            Text("LogOut")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 100, height: 40)
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 2)
        )
    }
}

struct dismissButton_Previews: PreviewProvider {
    static var previews: some View {
        DismissButton()
    }
}
