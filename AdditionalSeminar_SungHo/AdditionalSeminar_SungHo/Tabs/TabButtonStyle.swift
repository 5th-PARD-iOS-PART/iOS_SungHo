//
//  TabButtonStyle.swift
//  AdditionalSeminar_SungHo
//
//  Created by  Lucid on 6/26/25.
//

import SwiftUI

struct TabButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .opacity(configuration.isPressed ? 0.9 : 1)
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
    }
}
