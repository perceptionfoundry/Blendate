//
//  ReligionView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 03/06/2021.
//

import SwiftUI

struct ReligionView: View {
    
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
                    destination: PoliticView(),
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
       
            Text("Religion")
                .font(.custom("Montserrat-SemiBold", size: 32))
                .foregroundColor(Color("Blue_Color"))
                .padding(.top, 65)
                .multilineTextAlignment(.center)
                .frame(width: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.top, 150)
            
            VStack(spacing: 20){
            HStack{
                Button(action: {isSegue.toggle()}, label: {
                    ZStack{
                        Capsule()
                            .fill(Color.white)
                            .frame(width: 100, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("Hindu")
                            .font(.custom("Montserrat-Regular", size: 14))
                            .foregroundColor(Color("Blue_Color"))
                    }
                })
                
                Button(action: {isSegue.toggle()}, label: {
                    ZStack{
                        Capsule()
                            .fill(Color.white)
                            .frame(width: 100, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("Buddist")
                            .font(.custom("Montserrat-Regular", size: 14))
                            .foregroundColor(Color("Blue_Color"))
                    }
                })
                
                Button(action: {isSegue.toggle()}, label: {
                    ZStack{
                        Capsule()
                            .fill(Color.white)
                            .frame(width: 100, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("Jewish")
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
                                .frame(width: 100, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Christian")
                                .font(.custom("Montserrat-Regular", size: 14))
                                .foregroundColor(Color("Blue_Color"))
                        }
                    })
                    
                    Button(action: {isSegue.toggle()}, label: {
                        ZStack{
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 100, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Catholic")
                                .font(.custom("Montserrat-Regular", size: 14))
                                .foregroundColor(Color("Blue_Color"))
                        }
                    })
                    
                    Button(action: {isSegue.toggle()}, label: {
                        ZStack{
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 100, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Islam")
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
                                .frame(width: 120, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Nonreligious")
                                .font(.custom("Montserrat-Regular", size: 14))
                                .foregroundColor(Color("Blue_Color"))
                        }
                    })
                    
                    Button(action: {isSegue.toggle()}, label: {
                        ZStack{
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 160, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Chinese Traditional")
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
                                .frame(width: 120, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Muslim")
                                .font(.custom("Montserrat-Regular", size: 14))
                                .foregroundColor(Color("Blue_Color"))
                        }
                    })
                    
                    Button(action: {isSegue.toggle()}, label: {
                        ZStack{
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 100, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Sikhism")
                                .font(.custom("Montserrat-Regular", size: 14))
                                .foregroundColor(Color("Blue_Color"))
                        }
                    })
                    
                    Button(action: {isSegue.toggle()}, label: {
                        ZStack{
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 100, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Other")
                                .font(.custom("Montserrat-Regular", size: 14))
                                .foregroundColor(Color("Blue_Color"))
                        }
                    })
                }
                
            }.padding()
            Toggle("Show on Profile", isOn: .constant(true)).foregroundColor(.gray)
                .padding()
        
        }
        
        
        .background(
        TopBackgroundlayoutView(imageTitle: "Religion"))
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        
    }
}

struct ReligionView_Previews: PreviewProvider {
    static var previews: some View {
        ReligionView()
    }
}
