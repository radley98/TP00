//
//  ContentView.swift
//  TP00
//
//  Created by Rad on 2024/4/5.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        Text("首页")
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
                    Text("首页")
                }
                .tag(0)
            
            MessageView()
                .tabItem {
                    Image(systemName: "message")
                    Text("消息")
                }
                .tag(1)
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("设置")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}
