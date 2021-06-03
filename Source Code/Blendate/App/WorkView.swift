//
//  WorkiView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 03/06/2021.
//

import SwiftUI

struct WorkView: View {
    
    
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
                    destination:EducationView(),
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
            
            Text("Work")
                .font(.custom("Montserrat-SemiBold", size: 32))
                .foregroundColor(Color("Blue_Color"))
                .padding(.top, 65)
                .multilineTextAlignment(.center)
                .frame(width: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Toggle("Show on Profile", isOn: .constant(true))
                .padding()
            Spacer()
          
        }.background(
            BottomBackgroundlayoutView(imageTitle:"Work")
        )
       
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
                       
    }
}

struct WorkView_Previews: PreviewProvider {
    static var previews: some View {
        WorkView()
    }
}
