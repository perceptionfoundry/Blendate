//
//  SignInView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 24/06/2021.
//

import SwiftUI

struct SignInView: View {
    
    @State var isSegue = false

    var body: some View {
        NavigationView{
        VStack{
            
            VStack{
                
                VStack {
                    Text("Sign UP")
                        .font(.custom("Montserrat-SemiBold", size: 24))
                        .foregroundColor(Color.white)
                        .padding(.bottom, 3)
                    Text("Create a new account")
                        .font(.custom("Montserrat-Regular", size: 18))
                        .foregroundColor(Color.white)
                        .opacity(0.7)
                        .frame(width: getRect().width * 0.5)
                      
                }
                
                ZStack(alignment:.bottom){
                    
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(width: getRect().width * 0.9, height: getRect().width * 1.5, alignment: .center)
                        .shadow(radius: 4)
                    
                    
                    
                
                    
                    //AUTH
                        VStack{
                            
                            HStack {
                                VStack(alignment:.center){
                                    TextField("+1", text: .constant(""))
                                    
                                    Rectangle()
                                        .fill(Color(#colorLiteral(red: 0.2444113493, green: 0.3430365324, blue: 0.8086824417, alpha: 1)))
                                        .frame(width: 40, height: 2)
                                    
                                }.frame(width: 40, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                VStack(alignment:.center){
                                    TextField("Phone Number", text: .constant(""))
                                    
                                    Rectangle()
                                        .fill(Color(#colorLiteral(red: 0.2444113493, green: 0.3430365324, blue: 0.8086824417, alpha: 1)))
                                        .frame(width: 250, height: 2)
                                    
                                }.frame(width: 250, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                            .padding(.bottom)
                           
                            NavigationLink(
                                destination: NameView(),
                                isActive: $isSegue,
                                label: {
                                    Button(action: {
                                        isSegue.toggle()
                                    }, label: {
                                        Text("Create Account")
                                            .font(.custom("Montserrat-Bold", size: 18))
                                            .foregroundColor(.white)
                                    })
                                    .frame(width: getRect().width * 0.6, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .background(Capsule()
                                                    .fill(Color(#colorLiteral(red: 0.3446457386, green: 0.3975973725, blue: 0.9629618526, alpha: 1)))
                                                    .shadow(color: Color(#colorLiteral(red: 0.3446457386, green: 0.3975973725, blue: 0.9629618526, alpha: 0.2406952713)), radius: 1, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 5))

                                    .padding()
                                })
                                .padding(.bottom, 30)

                            
                            Text("Or register with")
                                .font(.custom("Montserrat-Regular", size: 18))
                                .foregroundColor(.gray)
                                .padding(.bottom, 40)
                    HStack(spacing: 40) {
                        SocialAuthButtonView(title: "Facebook", image: "facebook"){
                            isSegue.toggle()
                        }
                        
                        
                        SocialAuthButtonView(title: "Google", image: "google"){
                            isSegue.toggle()
                        }
                    }
                    
                    HStack(spacing: 60) {
                        SocialAuthButtonView(title: "Apple", image: "apple"){
                            isSegue.toggle()
                        }
                        
                        
                        
                        SocialAuthButtonView(title: "Email", image: ""){
                            isSegue.toggle()
                        }
                    }.padding()
                }
                        .frame(width: getRect().width * 0.9)
                        .padding(.bottom, 30)
                   
                    
                }
                
                HStack {
                    Text("Have an account?")
                        .font(.custom("Montserrat-Regular", size: 16))
                        .foregroundColor(Color.gray)
                    Button(action: {
                        isSegue.toggle()
                    }, label: {
                        Text("Log In")
                            .font(.custom("Montserrat-Regular", size: 16))
                            .foregroundColor(Color("Blue_Color"))
                })
                }
                
                Spacer()
            }
            .frame(width: getRect().width)
        }
        .background(
            VStack{
                Image("Signin_BG")
                    .resizable()
                    .scaledToFit()
            
                Spacer()
            }
//            .frame(width: getRect().width, height: getRect().height)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        )
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

struct SocialAuthButtonView: View {
    var title : String
    var image: String
    var actionFunc : ()->()
    
    var body: some View {
        Button(action: {
            actionFunc()
        }, label: {
            HStack{
                Image(image)
                    .resizable()
                    .frame(width: 30, height: 30)
                
                Text(title)
                    .font(.custom("Montserrat-Regular", size: 18))
                    .foregroundColor(.black)
            }
            .padding()
            .background(Capsule()
                            .stroke(Color(#colorLiteral(red: 0.9097989798, green: 0.9097114205, blue: 0.9183166027, alpha: 1)))
                            .frame(width: 160, height: 50))
        })
    }
}
