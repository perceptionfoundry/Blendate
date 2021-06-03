//
//  LookingView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 03/06/2021.
//

import SwiftUI

struct LookingView: View {
    

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
                    destination: RelationView(),
                    isActive: $isSegue,
                    label: {
                        Button(action: {
                           
                        }, label: {
                            Text("")
                                .font(.custom("Montserrat-Bold", size: 16))
                                .foregroundColor(Color("Blue_Color"))
                          
                        })
                    })

            }.padding(.horizontal)
            .padding(.top)
            
            Text("Who are you interested in dating?")
                .font(.custom("Montserrat-SemiBold", size: 32))
                .foregroundColor(Color("Blue_Color"))
                .padding(.top, 65)
                .multilineTextAlignment(.center)
                .frame(width: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            
            HStack{
                Button(action: {isSegue.toggle()}, label: {
                    ZStack{
                        Capsule()
                            .fill(Color.white)
                            .frame(width: 136, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("Women")
                            .font(.custom("Montserrat-Regular", size: 18))
                            .foregroundColor(Color("Blue_Color"))
                    }
                }).padding(.trailing)
                
                Button(action: {isSegue.toggle()}, label: {
                    ZStack{
                        Capsule()
                            .fill(Color.white)
                            .frame(width: 136, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("Men")
                            .font(.custom("Montserrat-Regular", size: 18))
                            .foregroundColor(Color("Blue_Color"))
                    }
                })
            }
            
            HStack{
                Button(action: {isSegue.toggle()}, label: {
                    ZStack{
                        Capsule()
                            .fill(Color.white)
                            .frame(width: 136, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("Both")
                            .font(.custom("Montserrat-Regular", size: 18))
                            .foregroundColor(Color("Blue_Color"))
                    }
                }).padding(.trailing)
                
            }
            
            Spacer()
          
        }.background(
            BottomBackgroundlayoutView(imageTitle: "Looking"))
       
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
                       
    }
}

struct LookingView_Previews: PreviewProvider {
    static var previews: some View {
        LookingView()
    }
}
