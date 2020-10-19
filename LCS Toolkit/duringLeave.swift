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
    @State var hoursRemaining = 1
    @State var minutesRemaining = 59
    @State var secondsRemaining = 59
    //maybe more efficient way xthen above variables
    var body: some View {
        Form {
            Section {
                let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
                Text("\(hoursRemaining) hour(s) \(minutesRemaining) minutes & \(secondsRemaining) seconds left")
                    .onReceive(timer) { _ in
                        if self.secondsRemaining > 0 {
                            self.secondsRemaining -= 1
                        }
                        else if self.secondsRemaining == 0 && self.minutesRemaining > 0 && self.hoursRemaining > 0 {
                            self.secondsRemaining += 59
                            self.minutesRemaining -= 1
                        }
                        else if self.secondsRemaining == 0 && self.minutesRemaining == 0 && self.hoursRemaining > 0 {
                            self.minutesRemaining += 59
                            self.secondsRemaining += 59
                            self.hoursRemaining -= 1
                        }
                    }
            }
            Button(action: {
                // check location if its okay send time to database saying your home, if not dont say anything
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







