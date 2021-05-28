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

    var body: some View {
        VStack(spacing: 15){
           
            HStack {
                Button(action: {
                    
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


//struct customPicker<Content : View> : UIViewRepresentable  {
//
//    var content : Content
//    //
//    var pickerCount : Int
//    @Binding var offSet : CGFloat
//
//    init (count: Int,offset: Binding<CGFloat>,@ViewBuilder content: @escaping () -> Content){
//
//        self.content = content()
//        self._offSet = offset
//        self.pickerCount = count
//    }
//
//    func makeCoordinator() -> Coordinator {
//        return customPicker.Coordinator(parent: self)
//    }
//
//    func makeUIView(context: Context) -> UIScrollView {
//
//        let scrollView = UIScrollView()
//
//        let swiftUIView = UIHostingController(rootView: content).view!
//
//
//        // So Swiftui width will be total of pickercount X 20 + screen size
//
//        let width  = CGFloat((pickerCount * 5) * 20) + (getRect().width - 30_)
//
//        swiftUIView.frame = CGRect(x: 0, y: 0, width: width, height: 50)
//
//        scrollView.contentSize = swiftUIView.frame.size
//        scrollView.addSubview(swiftUIView)
//        scrollView.bounces = false
//        scrollView.showsHorizontalScrollIndicator = false
//        scrollView.delegate = context.coordinator
//        return scrollView
//
//    }
//
//    func updateUIView(_ uiView: UIScrollView, context: Context) {
//
//    }
//
//    //delegate
//
//   class Coordinator : NSObject,UIScrollViewDelegate{
//
//       var parent : customPicker
//
//       init(parent: customPicker){
//           self.parent = parent
//       }
//
//       func scrollViewDidScroll(_ scrollView: UIScrollView) {
//           parent.offSet = scrollView.contentOffset.x
//       }
//
//
//       func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//
//           let offset = scrollView.contentOffset.x
//
//           let value = ( offset / 20).rounded(.toNearestOrAwayFromZero)
//           scrollView.setContentOffset(CGPoint(x: value * 20, y: 0), animated: false)
//       }
//       func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
//
//           if !decelerate{
//               let offset = scrollView.contentOffset.x
//
//               let value = ( offset / 20).rounded(.toNearestOrAwayFromZero)
//               scrollView.setContentOffset(CGPoint(x: value * 20, y: 0), animated: false)
//           }
//       }
//   }
//
//
//
//}
