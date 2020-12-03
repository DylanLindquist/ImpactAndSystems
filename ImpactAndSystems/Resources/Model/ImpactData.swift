//
//  ImpactData.swift
//  ImpactAndSystems
//
//  Created by Lindquist, Dylan on 12/3/20.
//

import SwiftUI
import MapKit

func loadImpactData() -> [ComputingImpact]
{
    var impactItems : [ComputingImpact] = [ComputingImpact]()
    
    let regions : [CLLocationCoordinate2D] =
    [
        CLLocationCoordinate2D(latitude: 15.55, longitude: 172.34),
        CLLocationCoordinate2D(latitude: 65.123, longitude: 12.34),
        CLLocationCoordinate2D(latitude: 56.33, longitude: 22.22),
        CLLocationCoordinate2D(latitude: 87.22, longitude: 15.23),
    ]
    
    let details : [String] =
    [
        "",
        "",
        "",
        ""
    ]
    
    let titles : [String] =
    [
        "First",
        "Second",
        "Third",
        "Fourth"
    ]
    
    for index in 0 ..< 4
    {
        let currentRegion = MKCoordinateRegion(center: regions[index], span: (MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)))
        impactItems.append(ComputingImpact(location: currentRegion, details: details[index] ,title: titles[index]))
    }
    
    return impactItems
}
