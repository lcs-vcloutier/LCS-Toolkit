//
//  LCS_ToolkitApp.swift
//  LCS Toolkit
//
//  Created by Cloutier, Vincent on 2020-09-27.
//

import SwiftUI

@main
struct LCS_ToolkitApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
      [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()
    return true
  }
}
