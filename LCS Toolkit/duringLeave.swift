//
//  duringLeave.swift
//  LCS Toolkit
//
//  Created by Cloutier, Vincent on 2020-09-28.
//

import SwiftUI

struct duringLeave: View {
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    //timer here
                    }
                Button(action: {
                                // activate theme!
                                }) {
                                    Text("Check In")
                                }
            }
        .navigationTitle("During Leave")
        }
    }
}


struct duringLeave_Previews: PreviewProvider {
    static var previews: some View {
        duringLeave()
    }
}



