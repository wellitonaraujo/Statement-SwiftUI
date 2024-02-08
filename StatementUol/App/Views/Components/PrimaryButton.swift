//
//  PrimaryButton.swift
//  StatementUol
//
//  Created by Welliton da Conceicao de Araujo on 06/02/24.
//

import SwiftUI

struct PrimaryButton: View {
    var action: () -> Void
    var title: String
    
    var body: some View {
        VStack {
            Button(action: action) {
                Text(title)
                    .font(.system(size: 14, weight: .regular, design: .default))
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, maxHeight: 40)
                    .background(Color("PRIMARY"))
                    .cornerRadius(4)
            }
        }.padding(.top, 10)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(action: {}, title: "Create")
    }
}
