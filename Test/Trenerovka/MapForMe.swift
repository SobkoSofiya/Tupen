//
//  MapForMe.swift
//  Test
//
//  Created by user on 28.06.2021.
//

import SwiftUI
import CoreLocation
import MapKit

struct MapForMe: View {
    var body: some View {
        ZStack{
            Button(action: {}, label: {
                
                
            })
        }.onAppear{
            var geocoder = CLGeocoder()
            geocoder.geocodeAddressString("Курочкина ул., 11, Дедовск, Московская обл., 143530") {
                placemarks, error in
                let placemark = placemarks?.first
                let lat = placemark?.location?.coordinate.latitude
                let lon = placemark?.location?.coordinate.longitude
                print("Lat: \(lat), Lon: \(lon)")
            }
            
//            let address = "Курочкина ул., 11, Дедовск, Московская обл., 143530"
//
//            let geoCoder = CLGeocoder()
//            geoCoder.geocodeAddressString(address) { (placemarks, error) in
//                guard
//                    let placemarks = placemarks,
//                    let location = placemarks.first?.location
//
//
//                else {
//                    // handle no location found
//
//                    return
//                }
//
//                // Use your location
//            }
        }
    }
}

struct MapForMe_Previews: PreviewProvider {
    static var previews: some View {
        MapForMe()
    }
}
