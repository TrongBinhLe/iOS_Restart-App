//
//  ContentView.swift
//  RestartApp
//
//  Created by admin on 13/09/2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    var body: some View {
        if isOnboardingViewActive {
            OnBoardingView()
        } else {
            HomeView()
        }
    }
}

#Preview {
    ContentView()
}
