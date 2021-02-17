//
//  CenterModifier.swift
//  Africa
//
//  Created by Itunu Raimi on 17/02/2021.
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
