//
//  FindFriendTabView.swift
//  AdditionalSeminar_SungHo
//
//  Created by  Lucid on 6/25/25.
//

import SwiftUI

struct FindFriendTabView: View {
    var body: some View {
        ZStack {
            Color(.systemGray3).ignoresSafeArea(edges: .all)
            Text("This is Find Friend Tab View")
        }
        .navigationTitle("Find Friend")
    }
}

#Preview {
    FindFriendTabView()
}
