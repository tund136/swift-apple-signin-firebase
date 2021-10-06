//
//  ContentView.swift
//  AppleSignInFirebase
//
//  Created by Danh Tu on 06/10/2021.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("log_status") var log_Status = false
    var body: some View {
        ZStack {
            if log_Status {
                Home()
            } else {
                Login()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
