//
//  LeaveRequestView.swift
//  LCS Toolkit
//
//  Created by Cloutier, Vincent on 2020-09-27.
//

import SwiftUI
//stepper for number of people that displays text box actively
//improve logic for time of leave - maybe just a im leaving button
struct LeaveRequestView: View {
    @State private var typeOfLeave = ""
    @State private var numberOfPeople: Int = 0
    @State private var time: Int = 0
    @State private var name = [String]()
var body: some View {
    NavigationView {
        Form {
                Section(header: Text("Type of Leave")) {
                    Picker("Type Of Leave", selection: $typeOfLeave) {
                            Text("Lakefield")
                            Text("Bridge")
                            Text("Peterborough")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("Number Of People With you")) {
                    Stepper("\(numberOfPeople)", value: $numberOfPeople, in: 0...3)
                    for i in $numberOfPeople {            TextField("Who?", text: $name)

                        
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
            }
            .navigationTitle("Leave Request")
        }
    }
}

struct LeaveRequestView_Previews: PreviewProvider {
    static var previews: some View {
        LeaveRequestView()
    }
}
