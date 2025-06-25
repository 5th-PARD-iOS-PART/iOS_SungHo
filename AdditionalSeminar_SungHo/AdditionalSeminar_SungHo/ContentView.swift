//
//  ContentView.swift
//  AdditionalSeminar_SungHo
//
//  Created by  Lucid on 6/25/25.
//

import SwiftUI


struct ContentView: View {
    
    @State private var selectedTab: Tabs = .my
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack {
                    switch selectedTab {
                    case .findFriend:
                        NavigationView {
                            FindFriendTabView()
                        }
                    case .recommendMenu:
                        NavigationView {
                            RecommendMenuTabView()
                        }
                    case .my:
                        MyTabView()
                    }
                }
            }
            CustomTabBar(selectedTab: $selectedTab)
        }
        .ignoresSafeArea(.all)
    }
}

enum Tabs {
    case findFriend
    case recommendMenu
    case my
}


#Preview {
    ContentView()
}
