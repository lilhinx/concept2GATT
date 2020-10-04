//
//  C2DriveLength+Parsing.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

extension C2DriveLength
{
    init( driveLengthWithLow low:UInt8 )
    {
        let driveLengthMultiplier:C2DriveLength = 0.01
        self = C2DriveLength( low ) * driveLengthMultiplier
    }
}
