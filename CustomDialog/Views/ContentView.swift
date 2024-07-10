//
//  ContentView.swift
//  CustomDialog
//
//  Created by Zafran on 10/07/2024.
//

//
//  ContentView.swift
//  CustomDialog
//
//  Created by Zafran on 10/07/2024.
//

import SwiftUI

struct ContentView: View {
    @State var isActive: Bool = false
    @State private var email: String = ""
    @State private var isShowingSecondView = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BgColor").edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    
                    VStack {
                        Text("Sign In")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.bottom, 30)
                        
                        Text("Enter your Email Address ")
                            .foregroundColor(Color.black.opacity(0.4))
                        
                        TextField("Email address", text: $email)
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(50.0)
                            .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0, y: 16)
                            .padding(.vertical)
                        
                        HStack {
                            Button {
                                //isActive = true
                                //                            isShowingSecondView = true
                            } label: {
                                Text("Okay")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.orange)
                                    .cornerRadius(50)
                            }
                            .fixedSize(horizontal: false, vertical: true)
                            
                            Button {
                                isActive = true
                                //                            isShowingSecondView = true
                            } label: {
                                Text("Show Popup")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color("Primarycolor"))
                                    .cornerRadius(50)
                            }
                        }
                    }
                    Spacer()
                    Divider()
                    Spacer()
                    Text("Forget Password")
                    Text("Read our Terms & Conditions.")
                        .foregroundColor(Color("Primarycolor"))
                    Spacer()
                }
                .padding()
//                .navigationDestination(isPresented: $isShowingSecondView) {
//                    SecondView(isActive: $isActive)
//                }
                
                if isActive {
                    CustomDialog(isActive: $isActive, title: "Sign In?", message: "Sign in Successfully", buttonTitle: "Sign In") {
                        print("Pass to viewModel")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

