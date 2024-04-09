//
//  ContentView.swift
//  TP00
//
//  Created by Rad on 2024/4/5.
//

import SwiftUI
import MapKit

struct DeviceView: View {
    @State private var DeviceViewName = ""
    
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .foregroundColor(Color.white)
            .frame(width: 300, height: 600)
            .shadow(radius: 4)
    }
}

struct HomeView: View {
    var body: some View {
        
        
        TabView {
            DeviceView()
            
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct MessageView: View {
    var body: some View {
        Text("消息")
    }
}

struct SettingsView: View {
    var body: some View {
        Text("设置")
    }
}

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Main")
                }
                .tag(0)
            
            MessageView()
                .tabItem {
                    Image(systemName: "bolt.horizontal")
                    Text("Statistics")
                }
                .tag(1)
            
            SettingsView()
                .tabItem {
                    Image(systemName: "shift")
                    Text("UpLoad log")
                }
                .tag(2)
        }
    }
}

#Preview {
    ContentView()
}
