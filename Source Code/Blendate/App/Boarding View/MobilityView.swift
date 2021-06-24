//
//  MobilityView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 03/06/2021.
//

import SwiftUI

struct MobilityView: View {
    
    
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
                    destination: ReligionView(),
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
            
            Text("Mobility")
                .font(.custom("Montserrat-SemiBold", size: 32))
                .foregroundColor(Color("Blue_Color"))
                .padding(.top, 30)
                .multilineTextAlignment(.center)
                .frame(width: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            
            Button(action: {isSegue.toggle()}, label: {
                ZStack{
                    Capsule()
                        .fill(Color.white)
                        .frame(width: 200, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Text("Not willing to move")
                        .font(.custom("Montserrat-Regular", size: 18))
                        .foregroundColor(Color("Blue_Color"))
                }
            }).padding(.bottom)
            
            Button(action: {isSegue.toggle()}, label: {
                ZStack{
                    Capsule()
                        .fill(Color.white)
                        .frame(width: 200, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Text("Willing to move")
                        .font(.custom("Montserrat-Regular", size: 18))
                        .foregroundColor(Color("Blue_Color"))
                }
            }).padding(.bottom)
            
            Button(action: {isSegue.toggle()}, label: {
                ZStack{
                    Capsule()
                        .fill(Color.white)
                        .frame(width: 200, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Text("No Preference")
                        .font(.custom("Montserrat-Regular", size: 18))
                        .foregroundColor(Color("Blue_Color"))
                }
            })
            Toggle("Show on Profile", isOn: .constant(true)).foregroundColor(.gray)
                .padding()
            Spacer()
          
        }.background(
           BottomBackgroundlayoutView(imageTitle: "Mobility"))
       
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
                       
    }
}

struct MobilityView_Previews: PreviewProvider {
    static var previews: some View {
        MobilityView()
    }
}
