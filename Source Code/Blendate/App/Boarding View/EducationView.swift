//
//  EducationView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 03/06/2021.
//

import SwiftUI

struct EducationView: View {
    
    
    @State var isSegue = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack{
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image("Back_Arrow_Blue")
            })
                Spacer()
                
                NavigationLink(
                    destination: MobilityView(),
                    isActive: $isSegue,
                    label: {
                        Button(action: {
                            isSegue.toggle()
                        }, label: {
                            Text("Next")
                                .font(.custom("Montserrat-Bold", size: 16))
                                .foregroundColor(Color("Blue_Color"))
                          
                        })
                    })

            }.padding(.horizontal)
            .padding(.top)
            
            VStack {
                Text("Education")
                    .font(.custom("Montserrat-SemiBold", size: 32))
                    .foregroundColor(Color("Blue_Color"))
                    .padding(.top, 40)
                    .multilineTextAlignment(.center)
                    .frame(width: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Text("What University, College, or High School did you attend?")
                    .font(.custom("Montserrat-Regular", size: 16))
                    .foregroundColor(Color("Blue_Color"))
                    .padding(.top,5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRect().width * 0.7, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            
            //MARK: TEXTFIELD
            ZStack {
                RoundedRectangle(cornerRadius: 6)
                    .fill(Color.white)
                    
                TextField("", text: .constant(""))
                    .padding(.horizontal)
                    
            }
            .frame(width: getRect().width * 0.9, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(
            RoundedRectangle(cornerRadius: 6)
                .stroke(Color(#colorLiteral(red: 0.8280140758, green: 0.8503483534, blue: 0.941247642, alpha: 1)))
                .frame(width: getRect().width * 0.91, height: 41, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            )
            
            //MARK: TOGGLE
            Toggle("Show on Profile", isOn: .constant(true)).foregroundColor(.gray)
                .padding()
            Spacer()
          
        }.background(
            BottomBackgroundlayoutView(imageTitle: "Education"))
       
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
                       
    }
}

struct EducationView_Previews: PreviewProvider {
    static var previews: some View {
        EducationView()
    }
}
