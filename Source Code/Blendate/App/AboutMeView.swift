//
//  AboutMeView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 29/05/2021.
//

import SwiftUI

struct AboutMeView: View {
    
    @State var isSegue = false
    
    @State private var message = ""
    @State private var textStyle = UIFont(name: "Montserrat-Regular", size: 12)
    var body: some View {
        
        
        VStack{
            HStack {
                Button(action: {
                    
                }, label: {
                    Image("Back_Arrow")
            })
                Spacer()
                
                NavigationLink(
                    destination: TabMainView(),
                    isActive: $isSegue,
                    label: {
                        Button(action: {
                            isSegue.toggle()
                        }, label: {
                            Text("SAVE")
                                .font(.custom("Montserrat-Bold", size: 16))
                                .foregroundColor(Color.white)
                          
                        })
                    })

            }.padding(.horizontal)
            .padding(.top)
          
            
            VStack {
                Text("About Me")
                    .font(.custom("Montserrat-SemiBold", size: 32))
                    .foregroundColor(Color.white)
                    .padding(.top, 20)
                    .multilineTextAlignment(.center)
                    .frame(width: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Text("Tell us about yourself, or share your favorite quote.")
                    .font(.custom("Montserrat-Regular", size: 18))
                    .foregroundColor(Color.white)
                    .padding(.top,5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRect().width * 0.6, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            
            
            TextView(text: $message)
                .font(.custom("Montserrat-Regular", size: 14))
                .padding(.horizontal)
                .frame(height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white)
                                .padding())
                .overlay(
                    Text("0/180")
                        .foregroundColor(.gray)
                        .font(.caption)
                        .padding()
                        .padding(.trailing, 10)
                        , alignment: .bottomTrailing)
           
            Spacer()
           
        }.background(
            ZStack{
                
                Color("BG_Color")
                    .ignoresSafeArea()
                VStack{
                  
                ZStack(alignment:.center){
                
                    
                    Image("Ellipse_Top")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .frame(height: UIScreen.main.bounds.height * 0.45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                  
                }
                    Spacer()
                }
                
            })
    
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
                       
    }
}

struct AboutMeView_Previews: PreviewProvider {
    static var previews: some View {
        AboutMeView()
    }
}


 
struct TextView: UIViewRepresentable {
 
    @Binding var text: String
 
    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
 
        textView.font = UIFont(name: "Montserrat-Regular", size: 12)
        textView.autocapitalizationType = .sentences
        textView.isSelectable = true
        textView.isUserInteractionEnabled = true
        
        return textView
    }
 
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
        uiView.font = UIFont(name: "Montserrat-Regular", size: 12)
    }
}
