//
//  CustomInput.swift
//  StatementUol
//
//  Created by Welliton da Conceicao de Araujo on 06/02/24.
//

import SwiftUI

struct CustomTextField: View {
    
    enum FieldType {
            case fullname, email, birthday, password
        }
    
    var label: String
    @Binding var text: String
    var placeholder: String
    var type: FieldType
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .font(.system(size: 14, weight: .regular, design: .default))
                .foregroundColor(.black)
                .fontWeight(.light)
                    
                ZStack(alignment: .leading) {
                    if text.isEmpty {
                        Text(placeholder)
                            .font(.system(size: 14, weight: .regular, design: .default))
                            .foregroundColor(.black)
                            .fontWeight(.light)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 12)
                    }
                        
                    switch type {
                        case .fullname:
                            TextField("", text: $text)
                                .padding(.horizontal, 8)
                                .padding(.vertical, 8)
                                .cornerRadius(4)
                        case .email:
                            TextField("", text: $text)
                                .keyboardType(.emailAddress)
                                .padding(.horizontal, 8)
                                .padding(.vertical, 8)
                                .cornerRadius(4)
                        case .birthday:
                            TextField("", text: $text)
                                .keyboardType(.numbersAndPunctuation)
                                .padding(.horizontal, 8)
                                .padding(.vertical, 8)
                                .cornerRadius(4)
                        case .password:
                            SecureField("", text: $text)
                                .padding(.horizontal, 8)
                                .padding(.vertical, 8)
                                .cornerRadius(4)
                        }
                    
                }
                .cornerRadius(10)
                .border(.black, width: 1)
                .frame(maxHeight: 40)
        }
    }
}
