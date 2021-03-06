//
//  ChoiceView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 27/05/2021.
//

import SwiftUI

struct ChoiceView: View {
    
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
                    destination: ChildrenView(),
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
            Spacer()
            Text("I identify as")
                .font(.custom("Montserrat-SemiBold", size: 32))
                .foregroundColor(Color("Blue_Color"))
                .padding(.top, 65)
                .multilineTextAlignment(.center)
                .frame(width: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.top, 150)
            
            
          
                    VStack(spacing: 30){
                    HStack{
                        Button(action: {isSegue.toggle()}, label: {
                            ZStack{
                                Capsule()
                                    .fill(Color.white)
                                    .frame(width: 136, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                Text("He/Him")
                                    .font(.custom("Montserrat-Regular", size: 18))
                                    .foregroundColor(Color("Blue_Color"))
                            }
                        }).padding(.trailing)
                        
                        Button(action: {isSegue.toggle()}, label: {
                            ZStack{
                                Capsule()
                                    .fill(Color.white)
                                    .frame(width: 136, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                Text("She/Her")
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
                                
                                Text("They/Them")
                                    .font(.custom("Montserrat-Regular", size: 18))
                                    .foregroundColor(Color("Blue_Color"))
                            }
                        }).padding(.trailing)
                        
                        Button(action: {isSegue.toggle()}, label: {
                            ZStack{
                                Capsule()
                                    .fill(Color.white)
                                    .frame(width: 136, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                Text("Other")
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
                                    .frame(width: 195, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                Text("Prefer not to say")
                                    .font(.custom("Montserrat-Regular", size: 18))
                                    .foregroundColor(Color("Blue_Color"))
                            }
                        })
                        
                        
                    }
                        }
              
                
           
            Spacer()
           
        }.background(
            TopBackgroundlayoutView(imageTitle: "Family"))
    
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
                       
    }
}

struct ChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceView()
    }
}

