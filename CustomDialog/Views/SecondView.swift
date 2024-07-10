//
//  SecondView.swift
//  CustomDialog
//
//  Created by Zafran on 10/07/2024.
//

import SwiftUI

struct SecondView: View {
    @Binding var isActive: Bool
    
    var body: some View {
        
        ZStack {
            Button {
                isActive = true
            } label: {
                Text("Show popup")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("Primarycolor"))
                    .cornerRadius(50)
            }
            
            if isActive {
                CustomDialog(isActive: $isActive, title: "Sign In?", message: "Sign in Successfully", buttonTitle: "Sign In") {
                    print("Pass to viewModel")
                }
            }
        }
    }
}

#Preview {
    SecondView(isActive: .constant(false))
}
