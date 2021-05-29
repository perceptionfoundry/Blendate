//
//  LocationView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 29/05/2021.
//

import SwiftUI

struct LocationView: View {
    
   
    @State var isSegue = false
    var body: some View {
        
        VStack{
            HStack {
                Button(action: {
                    
                }, label: {
                    Image("Back_Arrow_Blue")
            })
                Spacer()
                
                NavigationLink(
                    destination: AddPhotoView(),
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
                Text("My location")
                    .font(.custom("Montserrat-SemiBold", size: 32))
                    .foregroundColor(Color("Blue_Color"))
                    .padding(.top, 40)
                    .multilineTextAlignment(.center)
                    .frame(width: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Text("Only neighborhood name will be shown")
                    .font(.custom("Montserrat-Regular", size: 16))
                    .foregroundColor(Color("Blue_Color"))
                    .padding(.top,5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRect().width * 0.556, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            

            
            InsetMapView()
                .padding()
                .frame(width: getRect().width * 0.9, height: getRect().height * 0.65, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(RoundedRectangle(cornerRadius: 12)
                                .foregroundColor(.white)
                )
          
          
          Spacer()
        }.background(
            ZStack{
                
                Color("BG_Color")
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                ZStack(alignment:.center){
                
                    
                    Image("Ellipse_Bottom")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .frame(height: UIScreen.main.bounds.height * 0.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                }
                    
                }
                
            })
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
                       
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
