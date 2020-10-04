//
//  C2Distance+Parsing.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

extension C2Distance
{
  
    init( distanceWithLow low:UInt32, mid:UInt32, high:UInt32 )
    {
        let distanceMultiplier:C2Distance = 0.1
        self = C2Distance( low | ( mid << 8 ) | ( high << 16 ) ) * distanceMultiplier
    }
  
    init( intervalDistanceWithLow low:UInt32, mid:UInt32, high:UInt32 )
    {
        self = C2Distance( low | ( mid << 8 ) | ( high << 16 ) )
    }
  
    init( projectedDistanceWithLow low:UInt32, mid:UInt32, high:UInt32 )
    {
        self = C2Distance( low | ( mid << 8 ) | ( high << 16 ) )
    }
  
    init( restDistanceWithLow low:UInt16, high:UInt16 )
    {
        self = C2Distance( low | ( high << 8 ) )
    }
  
    init( restDistanceWithLow low:UInt32, mid:UInt32, high:UInt32 )
    {
        self = C2Distance( low | ( mid << 8 ) | ( high << 16 ) )
    }
}
