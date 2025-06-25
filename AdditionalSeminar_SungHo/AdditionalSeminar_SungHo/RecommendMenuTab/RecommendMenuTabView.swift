//
//  RecommendMenuTabView.swift
//  AdditionalSeminar_SungHo
//
//  Created by  Lucid on 6/25/25.
//

import SwiftUI

struct RecommendMenuTabView: View {
    var body: some View {
        ZStack {
            Color(.systemGray3).ignoresSafeArea(edges: .all)
            Text("This is Recommend Menu Tab View")
        }
        .navigationTitle("Recommend Menu")
    }
}

#Preview {
    RecommendMenuTabView()
}
