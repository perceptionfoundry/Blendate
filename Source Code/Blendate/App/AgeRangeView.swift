//
//  AgeRangeView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 28/05/2021.
//

import SwiftUI

struct AgeRangeView: View {
    @State var isSegue = false
    @State var fromValue : CGFloat = 0
    @State var toValue : CGFloat = 0

    var body: some View {
        VStack(spacing: 15){
           
            HStack {
                Button(action: {
                    
                }, label: {
                    Image("Back_Arrow")
            })
                Spacer()
                
                NavigationLink(
                    destination: LocationView(),
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
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
       
            Text("Children’s age range")
                .font(.custom("Montserrat-SemiBold", size: 28))
                .foregroundColor(Color("Blue_Color"))
                .padding(.top, 65)
                .multilineTextAlignment(.center)
                .frame(width: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.top, 250)
            
            let pickerCount = 18
                
            Group{
            VStack {
                Text("From")
                    .font(.custom("Montserrat-SemiBold", size: 18))
                    .foregroundColor(Color("Blue_Color"))
                HorizontalPickerView(count: pickerCount, offset: $fromValue) {
                    
                   
                    HStack(spacing: 0){
                        
                        ForEach(1...pickerCount, id:\.self){ index in
                            
                            Text("\(index)")
                                .foregroundColor(.gray)
                                .font(.custom("Montserrat-SemiBold", size: 16))
                                .frame(width:20)
                            
                            
                            //subTick
                            ForEach(1...4, id:\.self){ index in
                                
                                Rectangle()
                                    .fill(Color.clear)
                                    .frame(width: 1, height: 15)
                                    // Gap b/w to line
                                    .frame(width:20)
                            }
                        }.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
          
                        Text("\(pickerCount + 1)")
                            .foregroundColor(.gray)
                            .font(.custom("Montserrat-SemiBold", size: 16))
                            .frame(width:20)
                            // Gap b/w to line
                            .frame(width:20)
                    }
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)

                }
                .frame(height: 50)
                .overlay(
                    Text("\(getValue(from: 1, index: fromValue))")
                        .font(.system(size: 38, weight: .heavy))
                        .foregroundColor(.purple)
                        .padding()
                        .background(
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 7)
                                    .fill(Color.white.opacity(0.9))
                                            .frame(width: 40, height: 62, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .shadow(radius: 2)
                                
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color.white)
                                            .frame(width: 66, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .shadow(radius: 2)
                            }
                        )
                        )
                .padding()
            }
                VStack {
                    Text("To")
                        .font(.custom("Montserrat-SemiBold", size: 18))
                        .foregroundColor(Color("Blue_Color"))
                    HorizontalPickerView(count: pickerCount, offset: $toValue) {
                        
                       
                        HStack(spacing: 0){
                            
                            ForEach(1...pickerCount, id:\.self){ index in
                                
                                Text("\(index)")
                                    .foregroundColor(.gray)
                                    .font(.custom("Montserrat-SemiBold", size: 16))
                                    .frame(width:20)
                                
                                
                                //subTick
                                ForEach(1...4, id:\.self){ index in
                                    
                                    Rectangle()
                                        .fill(Color.clear)
                                        .frame(width: 1, height: 15)
                                        // Gap b/w to line
                                        .frame(width:20)
                                }
                            }
              
                            Text("\(pickerCount + 1)")
                                .foregroundColor(.gray)
                                .font(.custom("Montserrat-SemiBold", size: 16))
                                .frame(width:20)
                                // Gap b/w to line
                                .frame(width:20)
                        }
//                        .background(Color("BG_Color"))
                        
                    }
                    .frame(height: 50)
                    .overlay(
                        Text("\(getValue(from: 1, index: toValue))")
                            .font(.system(size: 38, weight: .heavy))
                            .foregroundColor(.purple)
                            .padding()
                            .background(
                                ZStack {
                                    
                                    RoundedRectangle(cornerRadius: 7)
                                        .fill(Color.white.opacity(0.9))
                                                .frame(width: 40, height: 62, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .shadow(radius: 2)
                                    
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color.white)
                                                .frame(width: 66, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .shadow(radius: 2)
                                }
                            )
                            )
                    .padding()
                }
        }
            Toggle("Show on Profile", isOn: .constant(true))
                .padding()
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
            
        }
        .frame(maxWidth: .infinity, maxHeight:.infinity)
        .background(
            ZStack{
                
                Color("BG_Color")
                    .ignoresSafeArea()
                VStack{
                  
                ZStack(alignment:.center){
                
                    
                    Image("Ellipse_Top")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .frame(height: UIScreen.main.bounds.height * 0.45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                    Image("Family")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 270, height: 226 , alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                    Spacer()
                }
                
            })
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        
    }
    
    func getValue(from:Int, index:CGFloat) -> String{
        let startWeight = from
        
        let progress = index / 20
        return "\(startWeight + (Int(progress * 0.2)))"
    }

}

struct AgeRangeView_Previews: PreviewProvider {
    static var previews: some View {
        AgeRangeView()
    }
}
