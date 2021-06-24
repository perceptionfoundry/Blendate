//
//  CommunityView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 22/06/2021.
//

import SwiftUI

struct CommunityView: View {
    
    
    @State var isSegue = false
    @State var isCommunity = false
    @State var isDating = true
    @State var isBoth = false
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
                    destination: InterestView(),
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
            
            
            VStack {
                Text("Here to find a relationship or community?")
                    .font(.custom("Montserrat-SemiBold", size: 24))
                    .foregroundColor(Color("Blue_Color"))
                    .padding(.bottom, 3)
                Text("Choose which kind of profile you’d like to make")
                    .font(.custom("Montserrat-Regular", size: 14))
                    .foregroundColor(Color("Blue_Color"))
                    .opacity(0.7)
                    .frame(width: getRect().width * 0.5)
                  
            }
            .multilineTextAlignment(.center)
            .frame(width: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding(.bottom)
            
            NavigationLink(
                destination: InterestView(),
                isActive: $isSegue,
                label: {
                    HStack(spacing:10) {
                        CommunityOptionButtonView(title: "Dating", description:"Connect and Blend with other singles nearby", isSelected: isDating){
                            isBoth = false
                            isDating = true
                            isCommunity = false
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                isSegue.toggle()
                            }
                            
                            
                        }
                       
                        CommunityOptionButtonView(title: "Community", description:"Discuss topics with other parents", isSelected: isCommunity){
                            
                            isBoth = false
                            isDating = false
                            isCommunity = true
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                isSegue.toggle()
                            }
                        }
                        
                        CommunityOptionButtonView(title: "Both", description:"Create one account for both platforms", isSelected: isBoth){
                            isBoth = true
                            isDating = false
                            isCommunity = false
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                isSegue.toggle()
                            }
                        }
                        
                    }
                    .offset(x:10)
                })
            
           
         
            Text("You can change this later on in your Settings")
                .font(.custom("Montserrat-Regular", size: 14))
                .foregroundColor(.accentColor)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                .padding(3)
                
            
     
            
         
            Spacer()
          
        }.background(
        BottomBackgroundlayoutView(imageTitle: "Community")
            
        )
       
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
                       
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}

struct CommunityOptionButtonView: View {
    
    var title: String
    var description: String
    var isSelected : Bool
    var action: ()->()
    var body: some View {
            Button(action: {action()}, label: {
                ZStack{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .fill(Color.white)
                        .frame(width: 112, height: 188, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                    
                    VStack{
                        Text(title)
                            .font(.custom("Montserrat-Bold", size: 16))
                            .foregroundColor(Color("Blue_Color"))
                        
                        Text(description)
                            .font(.custom("Montserrat-Regular", size: 14))
                            .foregroundColor(Color("Blue_Color"))
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        
                        Image(isSelected ? "circle_check" : "circle_uncheck")
                    }
                }
                .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .stroke(Color(#colorLiteral(red: 0.1608760953, green: 0.2610802948, blue: 0.6796597242, alpha: 1)),lineWidth: 4))
            }).padding(.trailing)
    }
}
