//
//  RegisterView.swift
//  StudySwiftUI3
//
//  Created by Дэвид Бердников on 09.06.2021.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @State private var showingModalView = false
    
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                Text("\(name.count)")
            }
            Button(action: registerUser) {
                HStack{
                    Text("OK")
                    Image(systemName: "checkmark.circle")
                }
                .disabled(!(name.count >= 3))
            }
        }.padding()
    }
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister.toggle()
        }
    }
}


struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
