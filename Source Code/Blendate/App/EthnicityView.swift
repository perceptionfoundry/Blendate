//
//  EthnicityView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 03/06/2021.
//

import SwiftUI

struct EthnicityView: View {
    
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
                    destination: ViceView(),
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
           
       Text("Ethnicity")
                .font(.custom("Montserrat-SemiBold", size: 32))
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
        .padding(.top, 60)
        .padding(.bottom, 20)
            
            VStack(spacing: 20){
            HStack{
                Button(action: {isSegue.toggle()}, label: {
                    ZStack{
                        Capsule()
                            .fill(Color.white)
                            .frame(width: 180, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("Pacific Islander")
                            .font(.custom("Montserrat-Regular", size: 14))
                            .foregroundColor(Color("Blue_Color"))
                    }
                }).padding(.trailing)
                
                Button(action: {isSegue.toggle()}, label: {
                    ZStack{
                        Capsule()
                            .fill(Color.white)
                            .frame(width: 180, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("Black/ African Descent")
                            .font(.custom("Montserrat-Regular", size: 14))
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
                            
                            Text("East Asian")
                                .font(.custom("Montserrat-Regular", size: 14))
                                .foregroundColor(Color("Blue_Color"))
                        }
                    }).padding(.trailing)
                    
                    Button(action: {isSegue.toggle()}, label: {
                        ZStack{
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 180, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Hispanic/Latino")
                                .font(.custom("Montserrat-Regular", size: 14))
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
                            
                            Text("South Asian")
                                .font(.custom("Montserrat-Regular", size: 14))
                                .foregroundColor(Color("Blue_Color"))
                        }
                    }).padding(.trailing)
                    
                    Button(action: {isSegue.toggle()}, label: {
                        ZStack{
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 180, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Native American")
                                .font(.custom("Montserrat-Regular", size: 14))
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
                            
                            Text("White/Caucasian")
                                .font(.custom("Montserrat-Regular", size: 14))
                                .foregroundColor(Color("Blue_Color"))
                        }
                    }).padding(.trailing)
                    
                    Button(action: {isSegue.toggle()}, label: {
                        ZStack{
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 180, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Middle Eastern")
                                .font(.custom("Montserrat-Regular", size: 14))
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
                            
                            Text("Open to all")
                                .font(.custom("Montserrat-Regular", size: 14))
                                .foregroundColor(Color("Blue_Color"))
                        }
                    }).padding(.trailing)
                    
                    
                   
                }
            }.padding()
            Toggle("Show on Profile", isOn: .constant(true))
                .padding()
            
            Spacer()
            
        }
      
        .background(
            TopBackgroundlayoutView(imageTitle:""))
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        
    }
}

struct EthnicityView_Previews: PreviewProvider {
    static var previews: some View {
        EthnicityView()
    }
}
