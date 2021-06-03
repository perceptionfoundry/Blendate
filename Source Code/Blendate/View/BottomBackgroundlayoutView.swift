//
//  BottomBackgroundlayoutView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 03/06/2021.
//

import SwiftUI

struct BottomBackgroundlayoutView: View {
    var imageTitle : String
    var body: some View {
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
                    
                    Image(imageTitle)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 270, height: 226 , alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
            }
            
        }
    }
}

struct BottomBackgroundlayoutView_Previews: PreviewProvider {
    static var previews: some View {
        BottomBackgroundlayoutView(imageTitle: "Birthday")
    }
}
