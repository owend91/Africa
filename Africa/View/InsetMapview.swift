//
//  InsetMapview.swift
//  Africa
//
//  Created by David Owen on 12/6/22.
//

import SwiftUI
import MapKit

struct InsetMapview: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    var body: some View {
        Map(coordinateRegion: $region)
            
            .overlay(alignment: .topTrailing, content: {
                NavigationLink {
                    MapView()
                } label: {
                    HStack {
                       Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(Color.black.opacity(0.4).cornerRadius(8))
                }
                .padding(12)

            })
            .frame(height: 256)
            .cornerRadius(12)
    }
}

struct InsetMapview_Previews: PreviewProvider {
    static var previews: some View {
        InsetMapview()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
