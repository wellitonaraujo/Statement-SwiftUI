//
//  CustomModal.swift
//  StatementUol
//
//  Created by Welliton da Conceicao de Araujo on 06/02/24.
//

import SwiftUI

struct CustomModal: View {
    @State private var showModal = false
    
    @State private var fullname = ""
    @State private var userID = ""
    @State private var birthdate = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            if showModal {
                Color.black.opacity(0.5).edgesIgnoringSafeArea(.all)
                    VStack {
                        Text("Create your account")
                            .font(.system(size: 24, weight: .semibold, design: .default))
                            .padding()
                        
                            VStack(alignment: .leading, spacing: 10) {
                                CustomTextField(label: "Full Name", text: $fullname, placeholder: "Input Default", type: .fullname)
                                CustomTextField(label: "User ID", text: $userID, placeholder: "ex: user@example.com", type: .email)
                                CustomTextField(label: "Birth Date", text: $birthdate, placeholder: "yyyy - mm - dd", type: .birthday)
                                CustomTextField(label: "Password", text: $password, placeholder: "Input Default", type: .password)
                                
                                PrimaryButton(action: {}, title: "Create")
                        }
                        .padding()
                    }
                    .frame(maxWidth: .infinity, maxHeight: 500, alignment: .bottom)
                    .background(Color.white)
                   
    
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    self.showModal = true
            }
        }
    }
}

struct CustomModal_Previews: PreviewProvider {
    static var previews: some View {
        CustomModal()
    }
}
