//
//  ImpactDetail.swift
//  ImpactAndSystems
//
//  Created by Lindquist, Dylan on 12/3/20.
//

import SwiftUI
import MapKit

struct ImpactDetail: View
{
    @State var impact : ComputingImpact
    
    var body: some View
    {
        VStack
        {
            Map(coordinateRegion: $impact.location)
                .frame(height: 400.0)
            Text(impact.details)
        }
    }
}


