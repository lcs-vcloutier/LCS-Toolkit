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
    @State var currentDate = Date()
    @State var timeRemaining = 7200
    @State var hoursRemaining = 2
    @State var minutesRemaining = 60
    @State var secondsRemaining = 60
    //maybe more efficient way then above variables
    var body: some View {
            Form {
                Section {
                    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

                        Text("\(timeRemaining)")
                            .onReceive(timer) { _ in
                                if self.timeRemaining > 0 {
                                    self.timeRemaining -= 1
                                }
                            }
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



struct duringLeave_Previews: PreviewProvider {
    static var previews: some View {
        duringLeave()
    }
}




    
    

