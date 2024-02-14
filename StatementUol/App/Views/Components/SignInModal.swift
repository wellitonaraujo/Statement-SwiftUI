//
//  SignInModal.swift
//  StatementUol
//
//  Created by Welliton da Conceicao de Araujo on 14/02/24.
//

import SwiftUI

struct SignInModal: View {
    @ObservedObject private var viewModel = CustomModalViewModel()
    
    var body: some View {
        ZStack {
            if viewModel.showModal {
                Color.black.opacity(0).edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    ZStack {
                        VStack {
                            VStack() {
                                Text("Create your account")
                                    .font(.system(size: 24, weight: .bold, design: .default))
                                    
                                Text("Welcome to My Statement! Fill in the details below to access your account.")
                                    .font(.system(size: 16, weight: .light, design: .default))
                                    .multilineTextAlignment(.center)
                                    .padding(.vertical, 22)
                                    .padding(.horizontal, 20)
                            }
                           
                            
                            VStack(alignment: .leading, spacing: 10) {

                                CustomTextField(label: "User ID", text: $viewModel.emailText, placeholder: "ex: user@example.com", type: .email)

                                CustomTextField(label: "Password", text: $viewModel.passwordText, placeholder: "Input Default", type: .password)
                                
                                    PrimaryButton(action: viewModel.createButtonAction, title: "Create")
                                    .padding(.bottom, 50)
                            }
                            .padding(.horizontal, 16)
                        }
                        .frame(maxWidth: .infinity, maxHeight: 420, alignment: .bottom)
                        .background(Color.white)
                        .mask(RoundedCorners(tl: 16, tr: 16, bl: 0, br: 0))
                        .shadow(radius: 15)
                    }
                }
                .edgesIgnoringSafeArea(.bottom)
            }
        }
    }
}

struct SignInModal_Previews: PreviewProvider {
    static var previews: some View {
        SignInModal()
    }
}
