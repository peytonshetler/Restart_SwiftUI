//
//  ContentView.swift
//  Restart_SwiftUI
//
//  Created by Peyton Shetler on 4/22/22.
//

import SwiftUI

struct ContentView: View {
    /// @AppStorage: Property Wrapper. Creates a property that can read and write to a boolean user default.
    /// "onboarding" is the User Defaults Key
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
