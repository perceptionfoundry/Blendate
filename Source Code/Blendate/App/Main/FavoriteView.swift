//
//  FavoriteView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 26/05/2021.
//

import SwiftUI

struct FavoriteView: View {
    var body: some View {
        
        VStack{
            
            VStack{
           Image("Today")
            .resizable()
            .frame(width: getRect().width * 0.4, height:  getRect().width * 0.2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
            .padding()

           
            VStack {
                ZStack{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .fill(Color.white)
                        .frame(width: getRect().width * 0.9, height: getRect().width * 0.8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    VStack {
                        Text("User Name")
                            .font(.custom("Montserrat-Bold", size: 24))
                            .foregroundColor(Color(#colorLiteral(red: 0.1420793831, green: 0.256313622, blue: 0.69624722, alpha: 1)))
                        
                        TextView(text: .constant("Hi! how u doin? 😃"))
                            .frame(width: getRect().width * 0.7, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.gray))
                        
                        
                        Text("Send a short message and start chating!")
                            .font(.custom("Montserrat-Regular", size: 12))
                            .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                        
                    }
                }
                .frame(width: getRect().width, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .overlay(
                    ZStack {
                        Circle()
                                .stroke(Color(UIColor(red: 0.757, green: 0.334, blue: 0.863, alpha: 1)), lineWidth: 6)
                            .frame(width: 140, height: 140, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Image("sample2")
                            .resizable()
                            .frame(width: 120, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    }
                    .offset(y: -180)
                         , alignment: .top)

                .overlay(
                    Button(action: {
                        
                    }, label: {
                        Text("Send Message")
                            .foregroundColor(.white)
                    })
                    .frame(width: getRect().width * 0.45, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Capsule()
                                    .fill(Color(#colorLiteral(red: 0.3446457386, green: 0.3975973725, blue: 0.9629618526, alpha: 1)))
                                    .shadow(color: Color(#colorLiteral(red: 0.3446457386, green: 0.3975973725, blue: 0.9629618526, alpha: 0.2406952713)), radius: 1, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 5))
                    .offset(y:getRect().height * 0.175)
                    , alignment: .bottom)
                
            }
            .offset(y: getRect().height * 0.175)
          
            
            

            .padding()
            Spacer()
        }.background(
            Rectangle()
             .fill(LinearGradient(gradient: Gradient(colors: [Color(UIColor(red: 0.188, green: 0.333, blue: 0.8, alpha: 1)), Color(UIColor(red: 0.816, green: 0.479, blue: 0.871, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .edgesIgnoringSafeArea(.all)
        )
        
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
            .previewDevice("iPhone 8")
        
        FavoriteView()
            .previewDevice("iPhone 11")
    }
}


//[
// .cgColor,
// .cgColor
//]
