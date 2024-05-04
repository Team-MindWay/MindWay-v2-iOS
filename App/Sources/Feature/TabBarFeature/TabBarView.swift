//
//  TabBarView.swift
//  MindWay
//
//  Created by 서지완 on 5/1/24.
//  Copyright © 2024 team.mindway. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab = 1
    var body: some View {
        TabView(selection: $selectedTab) {
            MainView()
                .tabItem {
                    Image(selectedTab == 1 ? "home_fill" : "home")
                    Text("홈")
                }
                .tag(1)
            
            EventTopBarView()
                .tabItem {
                    Image(selectedTab == 2 ? "heart_fill" : "heart")
                    Text("이벤트")
                }
                .tag(2)
            
            BookRecommendView()
                .tabItem {
                    Image(selectedTab == 3 ? "book_fill" : "book")
                    Text("도서")
                }
                .tag(3)
            
            MyPageView()
                .tabItem {
                    Image(selectedTab == 4 ? "profile_fill" : "profile")
                    Text("마이")
                }
                .tag(4)
        }
        .accentColor(.black)
        .padding(.horizontal, 5)
        
        
    }
}
