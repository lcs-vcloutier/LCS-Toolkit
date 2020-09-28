//
//  ContentView.swift
//  LCS Toolkit
//
//  Created by Cloutier, Vincent on 2020-09-27.
//

import SwiftUI
let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct ContentView : View {
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Login")) {
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
