//
//  LeaveRequestView.swift
//  LCS Toolkit
//
//  Created by Cloutier, Vincent on 2020-09-27.
//

import SwiftUI
//stepper for number of people that displays text box actively, type of leave, time of leave
struct LeaveRequestView: View {
    @State private var checkAmount = ""
    @State private var typeOfLeave = ""
    @State private var numberOfPeople = 2
    
    let numberOfPeoples = [0, 1, 2, 3]
    
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
                Picker("Number of People", selection: $numberOfPeople) {
                        Text("0")
                        Text("1")
                        Text("2")
                        Text("3")
                    
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            Section(header: Text("When")) {
                Picker("Number of People", selection: $numberOfPeople) {
                        Text("1-3")
                        Text("3-5")
                        Text("2")
                        Text("3")
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            Section(header: Text("Amount Per Person")) {
                    Text("$")
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
