//
//  More.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 03/06/2021.
//

import SwiftUI

struct MoreKidView: View {
    
    @State var isSegue = false
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack{
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image("Back_Arrow")
            })
                Spacer()
                
                NavigationLink(
                    destination: WorkView(),
                    isActive: $isSegue,
                    label: {
                        Button(action: {
                            
                        }, label: {
                            Text("")
                                .font(.custom("Montserrat-Bold", size: 16))
                                .foregroundColor(Color.white)
                          
                        })
                    })

            }.padding(.horizontal)
            .padding(.top)
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
       
            Text("Do you want more kids?")
                .font(.custom("Montserrat-SemiBold", size: 32))
                .foregroundColor(Color("Blue_Color"))
                .padding(.top, 65)
                .multilineTextAlignment(.center)
                .frame(width: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.top, 150)
            
            HStack{
                Button(action: {isSegue.toggle()}, label: {
                    ZStack{
                        Capsule()
                            .fill(Color.white)
                            .frame(width: 136, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("Yes")
                            .font(.custom("Montserrat-Regular", size: 18))
                            .foregroundColor(Color("Blue_Color"))
                    }
                }).padding(.trailing)
                
                Button(action: {isSegue.toggle()}, label: {
                    ZStack{
                        Capsule()
                            .fill(Color.white)
                            .frame(width: 136, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("No")
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
                            .frame(width: 180, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("Prefer not to say")
                            .font(.custom("Montserrat-Regular", size: 18))
                            .foregroundColor(Color("Blue_Color"))
                    }
                }).padding(.trailing)
                
               
            }
            Toggle("Show on Profile", isOn: .constant(true))
                .padding()
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
            
        }
        .frame(maxWidth: .infinity, maxHeight:.infinity)
        .background(
           TopBackgroundlayoutView(imageTitle: "Family"))
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        
    }
}

struct More_Previews: PreviewProvider {
    static var previews: some View {
        MoreKidView()
    }
}
