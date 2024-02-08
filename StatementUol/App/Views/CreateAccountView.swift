//
//  CreateAccountView.swift
//  StatementUol
//
//  Created by Welliton da Conceicao de Araujo on 06/02/24.
//

import SwiftUI

struct CreateAccountView: View {
    var body: some View {
        ZStack() {
            Color("BACKGROUND").ignoresSafeArea()
            VStack {
                Image("Logo-Compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 143, height: 20)
                    .padding(8)
                
                Text("My Statement")
                    .font(.system(size: 24, weight: .semibold, design: .default))
                
                Image("welcome")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 187, height: 159)
                
                Text("Track your statement and account balance")
                    .font(.system(size: 16, weight: .regular, design: .default))
               
                CustomModal()
            }
        }
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
