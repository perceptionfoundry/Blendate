//
//  HeightView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 22/06/2021.
//

import SwiftUI

struct HeightView: View {
    
    @State var isSegue = false
    @State var selectedHeight = "4'0"
    let Heights = ["4'2","4'3","4'4","4'5","4'6","4'7","4'8","4'9","5'0","5'1","5'2","5'3","5'4","5'5","5'6","5'7","5'8","5'9","6'0","6'0","6'1","6'2","6'3","6'4","6'5","6'6","6'7","6'8","6'9","7'0"]
    
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
                    destination: CommunityView(),
                    isActive: $isSegue,
                    label: {
                        Button(action: {
                            isSegue.toggle()
                        }, label: {
                            Text("Next")
                                .font(.custom("Montserrat-Bold", size: 16))
                                .foregroundColor(Color.white)
                          
                        })
                    })
            }.padding(.horizontal)
            .padding(.top)
            
            
            Text("How tall are you?")
                .font(.custom("LexendDeca-Regular", size: 32))
                .foregroundColor(Color.white)
                .padding(.top, 40)
            
            HStack(spacing: 2) {
                
                Image("Height")
                    .resizable()
                    .frame(height: 360, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .scaledToFill()
                HStack{
    //
                    VStack (spacing: 50) {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 25, height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 50, height: 1.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Rectangle()
                            .fill(Color(#colorLiteral(red: 0.1420793831, green: 0.256313622, blue: 0.69624722, alpha: 1)))
                            .frame(width: 75, height: 2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 50, height: 1.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 25, height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    
                    Picker("", selection: $selectedHeight) {
                        
                        ForEach(Heights, id:\.self){ i in
                               
                            Text("""
                            \(i)"
                            """)
                                .foregroundColor(.accentColor)
                                .font(.title2)
                                .bold()
                                .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("")
                        }
                    }
                    .overlay(
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                    .fill(Color.white)
                                .frame(width: 70, height: 50)
                            
                            Text("""
                            \(selectedHeight)"
                            """)
                                .foregroundColor(.accentColor)
                                .font(.title)
                                .bold()
                        }, alignment: .center)
                    .offset(x:10)
                    .frame(width: 50, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.red)
                }
            }
            .offset( y: getRect().height * 0.25)
            .frame(width: getRect().width * 0.8, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            
            
           
            Spacer()
            Text("Please don’t exaggerate by too much")
                .font(.custom("Montserrat-Regular", size: 16))
                .foregroundColor(.accentColor)
                .offset(y: 100)
            
            
          
                 
              
                
           
            Spacer()
           
        }.background(
            TopBackgroundlayoutView(imageTitle: ""))
    
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
                       
    }
}

struct HeightView_Previews: PreviewProvider {
    static var previews: some View {
        HeightView()
    }
}
