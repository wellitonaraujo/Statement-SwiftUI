import SwiftUI

struct CustomTextField: View {
    var label: String
    
    enum FieldType {
        case fullname, email, birthday, password
    }
    
    @StateObject private var viewModel: CustomTextFieldViewModel
    
    init(label: String, text: Binding<String>, placeholder: String, type: FieldType) {
        self.label = label
        _viewModel = StateObject(wrappedValue: CustomTextFieldViewModel(text: text.wrappedValue, placeholder: placeholder, type: type))
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .font(.system(size: 14, weight: .regular, design: .default))
                .foregroundColor(.black)
                .fontWeight(.light)
            
            ZStack(alignment: .leading) {
                if viewModel.text.isEmpty {
                    Text(viewModel.placeholder)
                        .font(.system(size: 14, weight: .regular, design: .default))
                        .foregroundColor(.black)
                        .fontWeight(.light)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 12)
                }
                
                switch viewModel.type {
                case .fullname, .email:
                    TextField("", text: $viewModel.text)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 8)
                        .cornerRadius(4)
                case .birthday:
                    TextField("", text: $viewModel.text)
                        .keyboardType(.numbersAndPunctuation)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 8)
                        .cornerRadius(4)
                case .password:
                    SecureField("", text: $viewModel.text)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 8)
                        .cornerRadius(4)
                }
            }
            .cornerRadius(10)
            .border(Color.black, width: 1)
            .frame(maxHeight: 40)
        }
    }
}


