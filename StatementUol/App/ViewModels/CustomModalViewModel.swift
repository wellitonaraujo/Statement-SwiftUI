//
//  CustomModalViewModel.swift
//  StatementUol
//
//  Created by Welliton da Conceicao de Araujo on 07/02/24.
//

import Foundation
import SwiftUI

class CustomModalViewModel: ObservableObject {
    @Published var fullName = ""
    @Published var emailText = ""
    @Published var birthdayText = ""
    @Published var passwordText = ""
    @Published var showModal = false
    
    var createButtonAction: () -> Void = {}
    @Published var signInModalVisible = false
    
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            //Modal transition animation
            withAnimation(.easeInOut(duration: 0.5)) {
                self.showModal = true
            }
        }
    }
}
