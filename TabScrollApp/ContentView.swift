//
//  ContentView.swift
//  TabScrollApp
//
//  Created by Nikolay Pochekuev on 02.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ZStack(alignment: .bottom) {
                ScrollView {
                    VStack(spacing: 12) {
                        ForEach(0..<100) {
                            Text("\($0 + 1)")
                                .font(.title)
                                .foregroundStyle(.quaternary)
                        }
                       
                    }
                    .frame(maxWidth: .infinity)
                }
                .safeAreaInset(edge: .bottom) {
                    Spacer()
                        .frame(height: 50)
                }
                Color(UIColor.red)
                    .frame(height: 50)
                    .opacity(0.4)
            }
            .tabItem {
                Label("First", systemImage: "star.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}
