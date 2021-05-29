//
//  Created by Robert Petras
//  SwiftUI Masterclass ♥ Better Apps. Less Code.
//  https://swiftuimasterclass.com
//

import SwiftUI
import MapKit

struct InsetMapView: View {
  // MARK: - PROPERTIES
  
  @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))

  // MARK: - BODY

  var body: some View {
    
    VStack {
        HStack{
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color("Blue_Color"))
            TextField("Search", text: .constant(""))
        }.padding()
        .background(
            RoundedRectangle(cornerRadius: 7)
                .stroke(Color("Blue_Color"), lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                
        )
        Map(coordinateRegion: $region)
            .cornerRadius(12)
    }
  }
}

// MARK: - PREVIEW

struct InsetMapView_Previews: PreviewProvider {
  static var previews: some View {
    InsetMapView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
