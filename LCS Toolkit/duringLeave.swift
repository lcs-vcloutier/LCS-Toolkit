//
//  duringLeave.swift
//  LCS Toolkit
//
//  Created by Cloutier, Vincent on 2020-09-28.
//

import SwiftUI

struct duringLeave: View {
    var body: some View {
            VStack {
                //add a time limit marker --- to do this u need to set a var for time gone and time left
                NavigationLink(
                    destination: ContentView()) {
                    Text("Check In")
                }
                
            }
        .navigationTitle("During Leave")
    }
}


struct duringLeave_Previews: PreviewProvider {
    static var previews: some View {
        duringLeave()
    }
}
