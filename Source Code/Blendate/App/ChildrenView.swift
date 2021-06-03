//
//  ChildrenView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 28/05/2021.
//

import SwiftUI

struct ChildrenView: View {
    @State var isSegue = false
    @State var offset : CGFloat = 0
    @State var numberOfKids : CGFloat = 0

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
                    destination: AgeRangeView(),
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
       
            Text("How many kids do you have?")
                .font(.custom("Montserrat-SemiBold", size: 32))
                .foregroundColor(Color("Blue_Color"))
                .padding(.top, 65)
                .multilineTextAlignment(.center)
                .frame(width: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.top, 150)
            
            let pickerCount = 5
                        
            HorizontalPickerView(count: pickerCount, offset: $numberOfKids) {
                
               
                HStack(spacing: 0){
                    
                    ForEach(1...pickerCount, id:\.self){ index in
                        
                        Text("\(index)")
                            .foregroundColor(.gray)
                            .font(.custom("Montserrat-SemiBold", size: 16))
                            .frame(width:30)
                        
                        
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
                Text("\(getValue(from: 1, index: numberOfKids))")
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
            Toggle("Show on Profile", isOn: .constant(true))
                .padding()
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
            
        }
        .frame(maxWidth: .infinity, maxHeight:.infinity)
        .background(
            TopBackgroundlayoutView(imageTitle: "Family")
        )
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        
    }
    
    func getWeight(from:Int) -> String{
        let startWeight = from
        
        let progress = offset / 20
        return "\(startWeight + (Int(progress * 0.2)))"
    }
    
    func getWeight1(from:Int) -> String{
        let startWeight = from
        
        let progress = numberOfKids / 20
        return "\(startWeight + (Int(progress * 0.2)))"
    }
    
    func getValue(from:Int, index:CGFloat) -> String{
        let startWeight = from
        
        let progress = index / 20
        return "\(startWeight + (Int(progress * 0.2)))"
    }

}

struct ChildrenView_Previews: PreviewProvider {
    static var previews: some View {
        ChildrenView()
    }
}


