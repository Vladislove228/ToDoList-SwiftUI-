//
//  LoginView.swift
//  ToDoList(SwiftUI)
//
//  Created by Владислав Квинто on 30/10/2023.
//

import SwiftUI
    
struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView() {
            VStack{
                // Header
                HeaderView(title: "To Do List", subTitle: "Get things done", angle: 15, background: .pink)
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Adress", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Passwords", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(
                        title: "Log In",
                        background: .blue
                    ){
                        viewModel.login()
                    }
                    
                }
                .offset(y: -50)
                Spacer()
                // Create Account
                VStack{
                    Text("New around here?")
                
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
