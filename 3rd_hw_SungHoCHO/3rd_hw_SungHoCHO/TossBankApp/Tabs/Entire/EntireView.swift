//
//  EntireView.swift
//  3rd_hw_SungHoCHO
//
//  Created by  Lucid on 4/4/25.
//

import SwiftUI

struct EntireView: View {
    var body: some View {
        ZStack {
            Color.gray.opacity(0.3).ignoresSafeArea(edges: .top)
            Text("This is EntireView")
        }
    }
}


#Preview {
    EntireView()
}
