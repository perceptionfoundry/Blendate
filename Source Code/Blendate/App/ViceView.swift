//
//  ViceView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 03/06/2021.
//

import SwiftUI

struct ViceView: View {
    
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
                    destination: AboutMeView(),
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
           
       Text("Vice")
                .font(.custom("Montserrat-SemiBold", size: 32))
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
        .padding(.top, 40)
        .padding(.bottom, 20)
            
            VStack(spacing: 20){
            HStack{
                Button(action: {isSegue.toggle()}, label: {
                    ZStack{
                        Capsule()
                            .fill(Color.white)
                            .frame(width: 180, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("Alcohol")
                            .font(.custom("Montserrat-Regular", size: 14))
                            .foregroundColor(Color("Blue_Color"))
                    }
                }).padding(.trailing)
                
                Button(action: {isSegue.toggle()}, label: {
                    ZStack{
                        Capsule()
                            .fill(Color.white)
                            .frame(width: 180, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("Late night snacker")
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
                            
                            Text("Marijuana")
                                .font(.custom("Montserrat-Regular", size: 14))
                                .foregroundColor(Color("Blue_Color"))
                        }
                    }).padding(.trailing)
                    
                    Button(action: {isSegue.toggle()}, label: {
                        ZStack{
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 180, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Tobacco")
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
                            
                            Text("Psychedelics")
                                .font(.custom("Montserrat-Regular", size: 14))
                                .foregroundColor(Color("Blue_Color"))
                        }
                    }).padding(.trailing)
                    
                    Button(action: {isSegue.toggle()}, label: {
                        ZStack{
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 180, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Sleeping in")
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
                            
                            Text("Nail Biter")
                                .font(.custom("Montserrat-Regular", size: 14))
                                .foregroundColor(Color("Blue_Color"))
                        }
                    }).padding(.trailing)
                    
                    Button(action: {isSegue.toggle()}, label: {
                        ZStack{
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 180, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Coffee drinker")
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
                            
                            Text("Procrastinator")
                                .font(.custom("Montserrat-Regular", size: 14))
                                .foregroundColor(Color("Blue_Color"))
                        }
                    }).padding(.trailing)
                    
                    Button(action: {isSegue.toggle()}, label: {
                        ZStack{
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 180, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Chocolate")
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
                            
                            Text("Sun tanning")
                                .font(.custom("Montserrat-Regular", size: 14))
                                .foregroundColor(Color("Blue_Color"))
                        }
                    }).padding(.trailing)
                    
                    Button(action: {isSegue.toggle()}, label: {
                        ZStack{
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 180, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Gambling")
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
                            
                            Text("Shopping")
                                .font(.custom("Montserrat-Regular", size: 14))
                                .foregroundColor(Color("Blue_Color"))
                        }
                    }).padding(.trailing)
                    
                    Button(action: {isSegue.toggle()}, label: {
                        ZStack{
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 180, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Exercising")
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
                            
                            Text("Book Worm")
                                .font(.custom("Montserrat-Regular", size: 14))
                                .foregroundColor(Color("Blue_Color"))
                        }
                    }).padding(.trailing)
                    
                    Button(action: {isSegue.toggle()}, label: {
                        ZStack{
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 180, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Open to all")
                                .font(.custom("Montserrat-Regular", size: 14))
                                .foregroundColor(Color("Blue_Color"))
                        }
                    })
                    
                   
                }
            }.padding()
            Toggle("Show on Profile", isOn: .constant(true))
                .padding()
            
            Spacer()
            
        }
      
        .background(
            TopBackgroundlayoutView(imageTitle: ""))
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        
    }
}

struct ViceView_Previews: PreviewProvider {
    static var previews: some View {
        ViceView()
    }
}
