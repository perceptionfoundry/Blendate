//
//  HelpCenterView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 22/06/2021.
//

import SwiftUI

struct HelpCenterView: View {
    
    @State var isFaqExpand_1 = false
    @State var isFaqExpand_2 = false
    @State var isFaqExpand_3 = false
    
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
                Text("Help Center")
                    .font(.custom("Montserrat-Regular", size: 24))
                    .foregroundColor(Color.white)
                   
                   
              Spacer()
                      
            }.padding(.horizontal)
            .padding(.top)

           
            VStack(spacing: 25){
                
                DropDownView(title: "What is Blendate?", content: "The team at Blendate is on a mission to make finding a date more fun and simpler for single parents. ", isExpand: isFaqExpand_1){
                    
                    isFaqExpand_1.toggle()
                    isFaqExpand_2 = false
                    isFaqExpand_3 = false
                }
                
                DropDownView(title: "Do I have to be a parent to join Blendate?", content: "The team at Blendate is on a mission to make finding a date more fun and simpler for single parents. ", isExpand: isFaqExpand_2){
                    
                    isFaqExpand_1 = false
                    isFaqExpand_2.toggle()
                    isFaqExpand_3 = false
                }
                
                DropDownView(title: "What is the minimun age requirement to join?", content: "The team at Blendate is on a mission to make finding a date more fun and simpler for single parents. ", isExpand: isFaqExpand_3){
                    
                    isFaqExpand_1 = false
                    isFaqExpand_2 = false
                    isFaqExpand_3.toggle()
                }
                
                
              
        }
            .padding(.horizontal)
            .offset(y: 40)
            
            
              
                
           
            Spacer()
           
        }.background(
            TopBackgroundlayoutView(imageTitle: ""))
    
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
                       
    }
}

struct HelpCenterView_Previews: PreviewProvider {
    static var previews: some View {
        HelpCenterView()
    }
}

struct DropDownView: View {
    
    var title : String
    var content : String
    var isExpand : Bool
    var action: ()->()
    
    var body: some View {
        if isExpand{
            ZStack(alignment:.top){
                
                VStack{
                    Spacer()
                    Text(content)
                        .font(.custom("Montserrat-Regular", size: 14))
                }.padding()
                .background(RoundedRectangle(cornerRadius: 25)
                                .fill(Color(#colorLiteral(red: 0.942890048, green: 0.9568493962, blue: 0.9913917184, alpha: 1))))
                .frame(height: isExpand ? CGFloat(150.0) : CGFloat(60))
                .animation(.easeIn)
                
                
                HStack{
                    Text(title)
                        .font(.custom("Montserrat-Regular", size: 14))
                        .padding(.leading, 10)
                    Spacer()
                    
                    Button(action: {
                        action()
                    }, label: {
                        ZStack{
                            Circle()
                                .stroke(Color.gray)
                                .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Image(isExpand ? "exclamation":"Query")
                                .resizable()
                                .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }.padding(.trailing, 10)
                    })
                    
                    
                }.padding()
                .frame(height: 60)
                .background(Capsule()
                                .foregroundColor(.white))
                
            }

        }else{
            ZStack(alignment:.top){
                
                VStack{
                    Spacer()
                    Text(content)
                        .font(.custom("Montserrat-Regular", size: 14))
                }.padding()
                .background(RoundedRectangle(cornerRadius: 25)
                                .fill(Color(#colorLiteral(red: 0.942890048, green: 0.9568493962, blue: 0.9913917184, alpha: 1))))
                .frame(height: isExpand ? CGFloat(150.0) : CGFloat(60))
                .animation(.easeInOut(duration: 2))
                .hidden()
                
                
                HStack{
                    Text(title)
                        .font(.custom("Montserrat-Regular", size: 14))
                        .padding(.leading, 10)
                    Spacer()
                    
                    Button(action: {
                        action()
                    }, label: {
                        ZStack{
                            Circle()
                                .stroke(Color.gray)
                                .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Image(isExpand ? "exclamation":"Query")
                                .resizable()
                                .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }.padding(.trailing, 10)
                    })
                    
                    
                }.padding()
                .frame(height: 60)
                .background(Capsule()
                                .foregroundColor(.white)
                                .shadow(radius: 5,x:0,y:15))
                
            }
            

        }
    }
}
