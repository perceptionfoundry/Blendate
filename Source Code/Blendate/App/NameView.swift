//
//  NameView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 27/05/2021.
//

import SwiftUI

struct NameView: View {
    
    @State var firstName = ""
    @State var lastName = ""
    @State var isSegue = false

    var body: some View {
        
        NavigationView{
            VStack{
                Text("What is your Name")
                    .font(.custom("LexendDeca-Regular", size: 32))
                    .foregroundColor(.white)
                    .padding(.top, 30)
                
                TFView(placeholder: "First Name", field: $firstName)
                    
                
                TFView(placeholder: "Last Name", field: $lastName)
                
                Text("Last names help build authenticity and will only be shared with matches.")
                    .font(.custom("Montserrat-Italic", size: 12))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 300,  alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
          
                Spacer()
                NavigationLink(
                    destination: AgeView(),
                    isActive: $isSegue,
                    label: {
                        Button(action: {
                            isSegue.toggle()
                        }, label: {
                            ZStack{
                                Capsule()
                                    .foregroundColor(.accentColor)
                                    .frame(width: 180, height: 48, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("Next")
                                .font(.custom("Montserrat-Regular", size: 16))
                                .foregroundColor(.white)
                            }
                        })
                    })
           
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
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct NameView_Previews: PreviewProvider {
    static var previews: some View {
        NameView()
    }
}

struct TFView: View {
    var placeholder:String
    @Binding var field : String
    var body: some View {
        TextField(placeholder, text: .constant(field))
            .foregroundColor(.white)
            .frame(width: UIScreen.main.bounds.width * 0.8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .font(.custom("Montserrat-Italic", size: 14))
            .background(Rectangle()
                            .foregroundColor(.white)
                            .frame( height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .offset( y: 15))
            .padding(10)
    }
}
