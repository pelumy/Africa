//
//  CreditsView.swift
//  Africa
//
//  Created by Itunu Raimi on 17/02/2021.
//

import SwiftUI

struct CreditsView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .center ) {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128, alignment: .center)
            
            Text("""
    Copyright @ Itunu Raimi
    All rights reserved
    Better Apps ❤️ Less Code
    """)
                .font(.footnote)
                .multilineTextAlignment(.center)
        } //: VSTACK
        .padding()
        .opacity(0.4)
        
    }
}

// MARK: - PREVIEW
struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
