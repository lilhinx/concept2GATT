//
//  C2Pace+Parsing.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

extension C2Pace
{
    init( paceWithLow low:UInt16, high:UInt16 )
    {
        let paceMultiplier:C2Pace = 0.01
        self = C2Pace( low | ( high << 8 ) ) * paceMultiplier
    }
}
