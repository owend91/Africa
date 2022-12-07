//
//  CenterModifier.swift
//  Africa
//
//  Created by David Owen on 12/7/22.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
