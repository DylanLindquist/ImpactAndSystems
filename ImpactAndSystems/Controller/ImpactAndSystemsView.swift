//
//  ImpactAndSystemsView.swift
//  ImpactAndSystems
//
//  Created by Lindquist, Dylan on 12/3/20.
//

import SwiftUI

struct ImpactAndSystemsView: View
{
    var impacts = loadImpactData()
    
    var body: some View
    {
        NavigationView
        {
            List
            {
                Section(header: Text("Systems"))
                {
                    Text("Coming Soon!")
                }
                Section(header: Text("Impacts"))
                {
                    ForEach(impacts.indices)
                    {
                        index in
                        
                        NavigationLink(
                            destination: ImpactDetail(impact: impacts[index]),
                            label: {
                                Text(impacts[index].title)})
                    }
                }
            }
        }
    }

    struct ContentView_Previews: PreviewProvider
    {
        static var previews: some View
        {
            ImpactAndSystemsView()
        }
    }

}
