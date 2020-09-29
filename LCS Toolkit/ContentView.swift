//
//  ContentView.swift
//  LCS Toolkit
//
//  Created by Cloutier, Vincent on 2020-09-27.
//

import SwiftUI

struct ContentView : View {
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Username", text: $username)
                    SecureField("Password", text: $password)
                }
                NavigationLink(
                    destination: LeaveRequestView()) {
                    Text("Login")
                }
            }
            .navigationTitle("LCS Toolkit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
