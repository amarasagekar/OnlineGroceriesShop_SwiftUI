//
//  RoundButton.swift
//  OnlineGroceriesShop
//
//  Created by AMAR on 08/02/24.
//

import SwiftUI

struct RoundButton: View {
    @State var title: String = "Title"
    var didTap:(()->())?
    
    var body: some View {
        Button{
            didTap?()
        }label: {
            Text(title)
                .font(.customfont(.semibold, fontSize: 20))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
        .background(Color.primaryApp)
        .cornerRadius(20)
    }
}

#Preview {
    RoundButton()
        .padding(20)
}
