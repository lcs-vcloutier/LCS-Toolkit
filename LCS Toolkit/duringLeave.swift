//
//  duringLeave.swift
//  LCS Toolkit
//
//  Created by Cloutier, Vincent on 2020-09-28.
//

import SwiftUI

struct duringLeave: View {
    var body: some View {
        NavigationView {
            VStack {
                
                NavigationLink(
                    destination: ContentView()) {
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
