//
//  CustomTabBar.swift
//  AdditionalSeminar_SungHo
//
//  Created by  Lucid on 6/26/25.
//

import SwiftUI

struct CustomTabBar: View {
    
    @Binding var selectedTab: Tabs
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .frame(height: 120)
                .clipShape(RoundedCorner(radius: 24, corners: [.topLeft, .topRight]))
                .shadow(color: .black.opacity(0.2), radius: 2, x: 0, y: -2)
            
            HStack {
                Spacer()
                
                // 친구찾기 탭
                Button {
                    selectedTab = .findFriend
                } label: {
                    VStack {
                        Image(selectedTab == .findFriend ? "findFriend" : "findFriendGray")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                        Text("친구 찾기")
                            .font(.system(size: 12))
                    }
                    .foregroundColor(selectedTab == .findFriend ? .orange : .gray)
                }
                
                Spacer()
                
                // 메뉴 추천 버튼
                Button {
                    selectedTab = .recommendMenu
                } label: {
                    VStack {
                        ZStack {
                            Circle()
                                .foregroundColor(.white)
                                .frame(width: 72, height: 72)
                                .shadow(radius: 2)
                            
                            Image("mumukLogo")
                                .resizable()
                                .foregroundColor(.primary)
                                .frame(width: 60, height: 60)
                        }
                        
                        Text("메뉴 추천")
                            .foregroundColor(.gray)
                            .font(.system(size: 12))
                    }
                    .offset(y: -32)
                }
                .buttonStyle(TabButtonStyle())
                
                Spacer()
                
                // 마이 탭
                Button {
                    selectedTab = .my
                } label: {
                    VStack {
                        Image(selectedTab == .my ? "myOrange" : "my")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 24)
                        Text("My")
                            .font(.system(size: 12))
                    }
                    .foregroundColor(selectedTab == .my ? .orange : .gray)
                }
                
                Spacer()
            }
        }
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = 24.0
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}


#Preview {
    @Previewable @State var selectedTab: Tabs = .my
    CustomTabBar(selectedTab: $selectedTab)
}
