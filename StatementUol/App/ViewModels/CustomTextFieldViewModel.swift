//
//  CustomTextFieldViewModel.swift
//  StatementUol
//
//  Created by Welliton da Conceicao de Araujo on 07/02/24.
//

import Foundation

class CustomTextFieldViewModel: ObservableObject {
    @Published var text: String
    var placeholder: String
    var type: CustomTextField.FieldType
    
    init(text: String, placeholder: String, type: CustomTextField.FieldType) {
        self.text = text
        self.placeholder = placeholder
        self.type = type
    }
    
    func isValidEmail(_ email: String) -> Bool {
        // Validação de e-mail
        let emailRegex = #"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"#
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
    
    func isValidBirthday(_ birthday: String) -> Bool {
        // Validação de data de aniversário
        let birthdayRegex = #"^\d{4}-\d{2}-\d{2}$"#
        let birthdayPredicate = NSPredicate(format: "SELF MATCHES %@", birthdayRegex)
        return birthdayPredicate.evaluate(with: birthday)
    }
    
    func isValidPassword(_ password: String) -> Bool {
        // Validação de senha
        return password.count >= 8
    }
}
