//
//  LeaveRequestView.swift
//  LCS Toolkit
//
//  Created by Cloutier, Vincent on 2020-09-27.
//

import SwiftUI
//stepper for loop that displays text box actively
//improve logic for time of leave - maybe just a im leaving button
struct LeaveRequestView: View {
    let typesOfLeave = ["Lakefield", "Bridge", "Peterborough"]
    @State private var typeOfLeave : Int = 0
    @State private var numberOfPeople: Int = 0
    @State private var time: Int = 0
    @State private var name = ["", "", ""]
    
    var body: some View {
        
        Form {
            Section(header: Text("Type of Leave")) {
                Picker("Type Of Leave", selection: $typeOfLeave) {
                    Text("Lakefield").tag(0)
                    Text("Bridge").tag(1)
                    Text("Peterborough").tag(2)
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            Section(header: Text("Number Of People With you")) {
                Stepper("\(numberOfPeople)", value: $numberOfPeople, in: 0...3)
                    .onChange(of: numberOfPeople, perform: { value in
                        print(name)
                    })
                // Ask for other people
                if numberOfPeople > 0 {
                    ForEach(0..<numberOfPeople, id: \.self) { id in
                        TextField("Person \(id + 1)", text: $name[id])
                    }
                }
            }
            
            Section(header: Text("When")) {
                Picker("Number of People", selection: $time) {
                    Text("1-3")
                    Text("3-5")
                    Text("5-7")
                    Text("7-9")
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            NavigationLink(
                destination: duringLeave()) {
                Text("Go to \(typesOfLeave[typeOfLeave])")
            }
        }
        .navigationTitle("Leave Request")
    }
    
}


struct LeaveRequestView_Previews: PreviewProvider {
    static var previews: some View {
        LeaveRequestView()
    }
}
