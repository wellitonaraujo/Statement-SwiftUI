import SwiftUI

struct CustomModal: View {
    @ObservedObject private var viewModel = CustomModalViewModel()
    @Binding var isSignInModalVisible: Bool
    
    init(viewModel: CustomModalViewModel, isSignInModalVisible: Binding<Bool>) {
            self.viewModel = viewModel
            self._isSignInModalVisible = isSignInModalVisible
    }
    
    var body: some View {
        ZStack {
            if viewModel.showModal {
                Color.black.opacity(0).edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    ZStack {
                        VStack {
                            Text("Create your account")
                                .font(.system(size: 24, weight: .bold, design: .default))
                                .padding()
                            
                            VStack(alignment: .leading, spacing: 10) {
                                CustomTextField(label: "Full Name", text: $viewModel.fullName, placeholder: "Input Default", type: .fullname)
                                CustomTextField(label: "User ID", text: $viewModel.emailText, placeholder: "ex: user@example.com", type: .email)
                                CustomTextField(label: "Birth Date", text: $viewModel.birthdayText, placeholder: "yyyy - mm - dd", type: .birthday)
                                CustomTextField(label: "Password", text: $viewModel.passwordText, placeholder: "Input Default", type: .password)
                                
                                PrimaryButton(action: {
                                    self.isSignInModalVisible = true
                                },  title: "Create")
                                 .padding(.bottom, 50)
                                }
                            .padding(.horizontal, 16)
                        }
                        .frame(maxWidth: .infinity, maxHeight: 500, alignment: .bottom)
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

struct CustomModal_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = CustomModalViewModel()
        let isSignInModalVisible = Binding<Bool>(get: { false }, set: { _ in })
        
        return CustomModal(viewModel: viewModel, isSignInModalVisible: isSignInModalVisible)
    }
}




