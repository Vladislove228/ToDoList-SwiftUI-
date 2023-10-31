//
//  TLButton.swift
//  ToDoList(SwiftUI)
//
//  Created by Владислав Квинто on 30/10/2023.
//

import SwiftUI

struct TLButton: View {
    let title : String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        .padding()
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "value", background: .pink){
            // Action
        }
    }
}